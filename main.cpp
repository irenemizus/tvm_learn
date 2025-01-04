#include <chrono>
#include <iostream>
#include <vector>
#include <random>


void multiply_v0_bT(const float* __restrict__ a, const float* __restrict__ bT, float* __restrict__ c, int M, int K, int N) {
    for (int m = 0; m < M; m++) {
        for (int n = 0; n < N; n++) {
            c[m * N + n] = 0.0;
            for (int k = 0; k < K; k++) {
                // c[m, n] += a[m, k] * bT[n, k]
                // c[m, n] = c[m * N + n]
                // a[m, k] = a[m * K + k]
                // bT[n, k] = bT[n * K + k]
                c[m * N + n] += a[m * K + k] * bT[n * K + k];
            }
        }
    };
}

void multiply_v0_aT(const float* __restrict__ aT, const float* __restrict__ b, float* __restrict__ c, int M, int K, int N) {
    for (int m = 0; m < M; m++) {
        for (int n = 0; n < N; n++) {
            c[m * N + n] = 0.0;
            for (int k = 0; k < K; k++) {
                // c[m, n] += a[m, k] * bT[n, k]
                // c[m, n] = c[m * N + n]
                // a[m, k] = a[m * K + k]
                // bT[n, k] = bT[n * K + k]
                c[m * N + n] += aT[k * M + m] * b[k * N + n];
            }
        }
    };
}

void multiply_v1_bT(const float* __restrict__ a, const float* __restrict__ bT, float* __restrict__ c, int M, int K, int N) {
    for (int m = 0; m < M; m++) {
        for (int n = 0; n < N; n++) {
            c[m * N + n] = 0.0;
            for (int k1 = 0; k1 < K; k1 += 16) {
                const float* pa = &a[m * K + k1];
                const float* pb = &bT[n * K + k1];
                for (int k2 = 0; k2 < 16; k2++) {
                    c[m * N + n] += pa[k2] * pb[k2];
                }
            }
        }
    };
}

void multiply_v1_aT(const float* __restrict__ aT, const float* __restrict__ b, float* __restrict__ c, int M, int K, int N) {
    for (int m = 0; m < M; m++) {
        for (int n = 0; n < N; n++) {
            c[m * N + n] = 0.0;
            for (int k = 0; k < K; k ++) {
                const float* pa = &aT[k * M + m];
                const float* pb = &b[k * N + n];
                c[m * N + n] += pa[k] * pb[k];
            }
        }
    };
}

void multiply_v11(const float* __restrict__ a, const float* __restrict__ bT, float* __restrict__ c, int M, int K, int N) {
    for (int m = 0; m < M; m++) {
        for (int n = 0; n < N; n++) {
            c[m * N + n] = 0.0;
            for (int k1 = 0; k1 < K; k1 += 16) {
                for (int k2 = 0; k2 < 16; k2++) {
                    c[m * N + n] += a[m * K + k1 + k2] * bT[n * K + k1 + k2];
                }
            }
        }
    };
}

bool epsilon_equal(float a, float b) {
    return std::abs(a - b) < 1e-4;
}

void print_mat(const float* c, int M, int N) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            std::cout << c[i * N + j] << " ";
        }
        std::cout << std::endl;
    }
    std::cout << std::endl;
}

void transpose_matr(const float* __restrict__ p, float* __restrict__ pT, int M, int K) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < K; j++) {
            pT[j * M + i] = p[i * K + j];
        }
    }
}

void tiny_test() {
    int M = 3, K = 2, N = 4;

    std::vector<float> va = { 1, 2, 3, 4, 5, 6 };           // M * K
    float *a;
    a = va.data();
    print_mat(a, M, K);

    std::vector<float> vaT(K * M);
    float *aT;
    aT = vaT.data();
    transpose_matr(a, aT, M, K);
    print_mat(aT, K, M);

    std::vector<float> vbT = { 6, 5, 4, 3, 2, 1, 1, 2 };    // N * K
    float *bT;
    bT = vbT.data();
    print_mat(bT, N, K);

    std::vector<float> vb(K * N);
    float *b;
    b = vb.data();
    transpose_matr(bT, b, N, K);
    print_mat(b, K, N);

    std::vector<float> vc_bT(M * N);
    multiply_v0_bT(a, bT, vc_bT.data(), M, K, N);
    print_mat(vc_bT.data(), M, N);

    std::vector<float> vc_aT(M * N);
    multiply_v0_aT(aT, b, vc_aT.data(), M, K, N);
    print_mat(vc_aT.data(), M, N);
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
    std::vector<float> va(M * K);
    for (float& f : va) {
        f = dist(e2);
    }
    a = va.data();

    float *bT;
    std::vector<float> vbT(N * K);
    for (float& f : vbT) {
        f = dist(e2);
    }
    bT = vbT.data();

    float *c;
    std::vector<float> vc(M * N);
    c = vc.data();

//    Trying to do alignment...
//
//    float* a = (float*)aligned_alloc(64, M * K * sizeof(float));
//    for (int i = 0; i < M * K; i++) {
//        a[i] = dist(e2);
//    }
//    float* bT = (float*)aligned_alloc(64, N * K * sizeof(float));
//    for (int i = 0; i < N * K; i++) {
//        bT[i] = dist(e2);
//    }
//    float* c = (float*)aligned_alloc(64, M * N * sizeof(float));
//    float* c1 = (float*)aligned_alloc(64, M * N * sizeof(float));


    std::chrono::time_point time_1 = std::chrono::system_clock::now();
    multiply_v0_bT(a, bT, c, M, K, N);
    std::chrono::time_point time_2 = std::chrono::system_clock::now();

    auto nanosec = std::chrono::duration_cast<std::chrono::nanoseconds>(time_2 - time_1).count();

    //std::cout << "Matrix multiplication result: " << std::endl;
    //print_mat(c, M, N);
    std::cout << "Matrix multiplication naive: " << nanosec * 1e-6 << " ms" << std::endl;

    float *c1;
    std::vector<float> vc1(M * N);
    c1 = vc1.data();

    std::chrono::time_point time_3 = std::chrono::system_clock::now();
    multiply_v1_bT(a, bT, c1, M, K, N);
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
//    Matrix multiplication naive: 574.975 ms
//    Matrix multiplication version 1: 546.557 ms
}
