#include <chrono>
#include <iostream>
#include <vector>
#include <random>


void multiply_v0(const float* __restrict__ a, const float* __restrict__ bT, float* __restrict__ c, int M, int K, int N) {
    for (int m = 0; m < M; m++) {
        for (int k = 0; k < K; k++) {
            c[m * K + k] = 0.0;
            for (int n = 0; n < N; n++) {
                // c[m, k] += a[m, n] * b[n, k]
                // c[m, k] = c[m * K + k]
                // a[m, n] = a[m * N + n]
                // b[n, k] = b[n * K + k]
                c[m * K + k] += a[m * N + n] * bT[k * N + n];
            }
        }
    };
}

void multiply_v1(const float* __restrict__ a, const float* __restrict__ bT, float* __restrict__ c, int M, int K, int N) {
    for (int m = 0; m < M; m++) {
        for (int k = 0; k < K; k++) {
            c[m * K + k] = 0.0;
            for (int n1 = 0; n1 < N; n1 += 16) {
                // c[m, k] += a[m, n] * b[n, k]
                // c[m, k] = c[m * K + k]
                // a[m, n] = a[m * N + n]
                // b[n, k] = b[n * K + k]

                const float* pa = &a[m * N + n1];
                const float* pb = &bT[k * N + n1];
                for (int n2 = 0; n2 < 16; n2++) {
                    c[m * K + k] += pa[n2] * pb[n2];
                }
            }
        }
    };
}

void multiply_v11(const float* __restrict__ a, const float* __restrict__ bT, float* __restrict__ c, int M, int K, int N) {
    for (int m = 0; m < M; m++) {
        for (int k = 0; k < K; k++) {
            c[m * K + k] = 0.0;
            for (int n1 = 0; n1 < N; n1 += 16) {
                // c[m, k] += a[m, n] * b[n, k]
                // c[m, k] = c[m * K + k]
                // a[m, n] = a[m * N + n]
                // b[n, k] = b[n * K + k]
                for (int n2 = 0; n2 < 16; n2++) {
                    c[m * K + k] += a[m * N + n1 + n2] * bT[k * N + n1 + n2];
                }
            }
        }
    };
}

bool epsilon_equal(float a, float b) {
    return std::abs(a - b) < 1e-4;
}

void print_mat(const float* c, int M, int K) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < K; j++) {
            std::cout << c[i * K + j] << " ";
        }
        std::cout << std::endl;
    }
}

void tiny_test() {
    int M = 3, N = 2, K = 4;
    std::vector<float> va = { 1, 2, 3, 4, 5, 6 };           // M * N
    std::vector<float> vbT = { 6, 5, 4, 3, 2, 1, 1, 2 };    // K * N
    std::vector<float> vc(M * K);

    multiply_v0(va.data(), vbT.data(), vc.data(), M, K, N);

    print_mat(vc.data(), M, K);
}

int main() {
#ifdef __AVX512F__
    std::cout << "AVX-512 is defined" << std::endl;
#endif
    tiny_test();

    std::random_device rd;
    std::mt19937 e2(rd());
    std::uniform_real_distribution<> dist(0.0, 1.0);

    int M = 4096;
    int K = 1024;
    int N = 128;

    float *a;
    std::vector<float> va(M * N);
    for (float& f : va) {
        f = dist(e2);
    }
    a = va.data();

    float *bT;
    std::vector<float> vbT(K * N);
    for (float& f : vbT) {
        f = dist(e2);
    }
    bT = vbT.data();

    float *c;
    std::vector<float> vc(M * K);
    c = vc.data();

//    Trying to do alignment...
//
//    float* a = (float*)aligned_alloc(64, M * N * sizeof(float));
//    for (int i = 0; i < M * N; i++) {
//        a[i] = dist(e2);
//    }
//    float* bT = (float*)aligned_alloc(64, K * N * sizeof(float));
//    for (int i = 0; i < K * N; i++) {
//        bT[i] = dist(e2);
//    }
//    float* c = (float*)aligned_alloc(64, M * K * sizeof(float));
//    float* c1 = (float*)aligned_alloc(64, M * K * sizeof(float));


    std::chrono::time_point time_1 = std::chrono::system_clock::now();
    multiply_v0(a, bT, c, M, K ,N);
    std::chrono::time_point time_2 = std::chrono::system_clock::now();

    auto nanosec = std::chrono::duration_cast<std::chrono::nanoseconds>(time_2 - time_1).count();

    //std::cout << "Matrix multiplication result: " << std::endl;
    //print_mat(c, M, K);
    std::cout << "Matrix multiplication naive: " << nanosec * 1e-6 << " ms" << std::endl;

    float *c1;
    std::vector<float> vc1(M * K);
    c1 = vc1.data();

    std::chrono::time_point time_3 = std::chrono::system_clock::now();
    multiply_v1(a, bT, c1, M, K, N);
    std::chrono::time_point time_4 = std::chrono::system_clock::now();

    if (!std::equal(vc.begin(), vc.end(), vc1.begin(), vc1.end(), epsilon_equal)) {
        throw std::runtime_error("vc1 != vc");
    }

    auto nanosec1 = std::chrono::duration_cast<std::chrono::nanoseconds>(time_4 - time_3).count();
    std::cout << "Matrix multiplication version 1: " << nanosec1 * 1e-6 << " ms" << std::endl;

    return 0;

//    Intel(R) Xeon(R) Gold 6230R CPU @ 2.10GHz
//
//    AVX-512 is defined
//    16 10 4 5
//    38 24 10 11
//    60 38 16 17
//    Matrix multiplication naive: 433.737 ms
//    Matrix multiplication version 1: 410.85 ms
}
