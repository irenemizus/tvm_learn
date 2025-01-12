#include <chrono>
#include <iostream>
#include <vector>
#include <random>
#include <cassert>


void multiply_v0_bT(const float* __restrict__ a, const float* __restrict__ bT, float* __restrict__ c, int M, int K, int N) {
    // c = a * bT
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
    // c = aT * b
    for (int m = 0; m < M; m++) {
        for (int n = 0; n < N; n++) {
            c[m * N + n] = 0.0;
            for (int k = 0; k < K; k++) {
                // c[m, n] += aT[k, m] * b[k, n]
                // c[m, n] = c[m * N + n]
                // aT[k, m] = aT[k * M + m]
                // b[k, n] = b[k * N + n]
                c[m * N + n] += aT[k * M + m] * b[k * N + n];
            }
        }
    };
}

void multiply_v1_aT(const float* __restrict__ aT, const float* __restrict__ b, float* __restrict__ c, int M, int K, int N) {
    // c = aT * b, the second variant
    assert(N % 16 == 0);
    for (int m = 0; m < M; m++) {
        for (int n1 = 0; n1 < N; n1 += 16) {
            for (int n2 = 0; n2 < 16; n2++) {
                c[m * N + n1 + n2] = 0.0;
                for (int k = 0; k < K; k++) {
                    c[m * N + n1 + n2] += aT[k * M + m] * b[k * N + n1 + n2];
                }
            }
        }
    };
}

void multiply_v2_aT(const float* __restrict__ aT, const float* __restrict__ b, float* __restrict__ c, int M, int K, int N) {
    // c = aT * b, the accelerated variant
    assert(N % 16 == 0);
    for (int i = 0; i < M * N; i++) { c[i] = 0.0; }

    for (int m = 0; m < M; m++) {
        for (int n1 = 0; n1 < N; n1 += 16) {
                for (int k = 0; k < K; k++) {
                    for (int n2 = 0; n2 < 16; n2++) {
                        c[m * N + n1 + n2] += aT[k * M + m] * b[k * N + n1 + n2];
                }
            }
        }
    };
}

void multiply_v3_aT(const float* __restrict__ aT, const float* __restrict__ b, float* __restrict__ c, int M, int K, int N) {
    // c = aT * b, the double-loop acceleration
    assert(N % 16 == 0);
    assert(M % 16 == 0);
    for (int i = 0; i < M * N; i++) { c[i] = 0.0; }

    for (int m1 = 0; m1 < M; m1 += 16) {
        for (int n1 = 0; n1 < N; n1 += 16) {
            for (int k = 0; k < K; k++) {
                for (int m2 = 0; m2 < 16; m2++) {
                    for (int n2 = 0; n2 < 16; n2++) {
                        c[(m1 + m2) * N + n1 + n2] += aT[k * M + m1 + m2] * b[k * N + n1 + n2];
                    }
                }
            }
        }
    };
}

bool epsilon_equal(float a, float b) {
    // Equality with the given accuracy
    return std::abs(a - b) < 1e-4;
}

void print_mat(const float* c, int M, int N) {
    // A function for pretty printing of a matrix
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            std::cout << c[i * N + j] << " ";
        }
        std::cout << std::endl;
    }
    std::cout << std::endl;
}

void transpose_matr(const float* __restrict__ p, float* __restrict__ pT, int M, int K) {
    // A function that transposes a matrix
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < K; j++) {
            pT[j * M + i] = p[i * K + j];
        }
    }
}

void tiny_test() {
    // A test function for the abovementioned functions on a case of small matrices
    int M = 3, K = 2, N = 16;

    // Matrix a ~ M x K
    std::vector<float> va = { 1, 2, 3, 4, 5, 6 };
    float *a;
    a = va.data();
    print_mat(a, M, K);

    // Matrix aT ~ K x M
    std::vector<float> vaT(K * M);
    float *aT;
    aT = vaT.data();
    transpose_matr(a, aT, M, K);
    print_mat(aT, K, M);

    // Matrix bT ~ N x K
    std::vector<float> vbT = { 6, 5, 4, 3, 2, 1, 1, 2, 6, 5, 4, 3, 2, 1, 1, 2, 6, 5, 4, 3, 2, 1, 1, 2, 6, 5, 4, 3, 2, 1, 1, 2};
    float *bT;
    bT = vbT.data();
    print_mat(bT, N, K);

    // Matrix b ~ K x N
    std::vector<float> vb(K * N);
    float *b;
    b = vb.data();
    transpose_matr(bT, b, N, K);
    print_mat(b, K, N);

    // Output matrix c_bT = a * bT ~ M x N
    std::vector<float> vc_bT(M * N);
    multiply_v0_bT(a, bT, vc_bT.data(), M, K, N);
    print_mat(vc_bT.data(), M, N);

    // Output matrix c_aT = aT * b ~ M x N
    std::vector<float> vc_aT(M * N);
    multiply_v0_aT(aT, b, vc_aT.data(), M, K, N);
    print_mat(vc_aT.data(), M, N);

    // Output matrix c1_aT = aT * b ~ M x N (obtained using the accelerated variant)
    std::vector<float> vc1_aT(M * N);
    multiply_v2_aT(aT, b, vc1_aT.data(), M, K, N);
    print_mat(vc1_aT.data(), M, N);
}

int main() {
#ifdef __AVX512F__
    std::cout << "AVX-512 is defined" << std::endl;
#endif
    //tiny_test();

    // Initializing of the uniform real distribution for random values
    std::random_device rd;
    std::mt19937 e2(rd());
    std::uniform_real_distribution<> dist(0.0, 1.0);

    int M = 4096;
    int K = 1024;
    int N = 128;

    // Matrix a ~ M x K of random real values
    float *a;
    std::vector<float> va(M * K);
    for (float& f : va) {
        f = dist(e2);
    }
    a = va.data();

    // Matrix bT ~ N x K of random real values
    float *bT;
    std::vector<float> vbT(N * K);
    for (float& f : vbT) {
        f = dist(e2);
    }
    bT = vbT.data();

    // Matrix aT ~ K x M
    std::vector<float> vaT(K * M);
    float *aT;
    aT = vaT.data();
    transpose_matr(a, aT, M, K);

    // Matrix b ~ K x N
    std::vector<float> vb(K * N);
    float *b;
    b = vb.data();
    transpose_matr(bT, b, N, K);


    // Matrix c ~ M x N
    float *c;
    std::vector<float> vc(M * N);
    c = vc.data();

    std::chrono::time_point time_1 = std::chrono::system_clock::now();
    // Calculating c = a * bT
    multiply_v0_bT(a, bT, c, M, K, N);
    std::chrono::time_point time_2 = std::chrono::system_clock::now();

    // Calculation time
    auto nanosec = std::chrono::duration_cast<std::chrono::nanoseconds>(time_2 - time_1).count();

    // Printing output results
    //std::cout << "Matrix multiplication result: " << std::endl;
    //print_mat(c, M, N);
    std::cout << "Matrix multiplication naive (c = a * bT): " << nanosec * 1e-6 << " ms" << std::endl;


    // Matrix c0 ~ M x N
    float *c0;
    std::vector<float> vc0(M * N);
    c0 = vc0.data();

    std::chrono::time_point time_10 = std::chrono::system_clock::now();
    // Calculating c0 = aT * b
    multiply_v0_aT(aT, b, c0, M, K, N);
    std::chrono::time_point time_20 = std::chrono::system_clock::now();

    // Checking if the functions 'multiply_v0_bT' and 'multiply_v0_aT' result in the same output matrices
    if (!std::equal(vc.begin(), vc.end(), vc0.begin(), vc0.end(), epsilon_equal)) {
        throw std::runtime_error("vc0 != vc");
    }

    // Calculation time
    auto nanosec0 = std::chrono::duration_cast<std::chrono::nanoseconds>(time_20 - time_10).count();
    // Printing output results
    std::cout << "Matrix multiplication naive (c = aT * b): " << nanosec0 * 1e-6 << " ms" << std::endl;


    // Matrix c1 ~ M x N
    float *c1;
    std::vector<float> vc1(M * N);
    c1 = vc1.data();

    std::chrono::time_point time_11 = std::chrono::system_clock::now();
    // Calculating c1 = aT * b (second variant)
    multiply_v1_aT(aT, b, c1, M, K, N);
    std::chrono::time_point time_21 = std::chrono::system_clock::now();

    // Checking if the functions 'multiply_v0_bT' and 'multiply_v1_aT' result in the same output matrices
    if (!std::equal(vc.begin(), vc.end(), vc1.begin(), vc1.end(), epsilon_equal)) {
        throw std::runtime_error("vc1 != vc");
    }

    // Calculation time
    auto nanosec1 = std::chrono::duration_cast<std::chrono::nanoseconds>(time_21 - time_11).count();
    // Printing output results
    std::cout << "Matrix multiplication version 1: " << nanosec1 * 1e-6 << " ms" << std::endl;


    // Matrix c2 ~ M x N
    float *c2;
    std::vector<float> vc2(M * N);
    c2 = vc2.data();

    std::chrono::time_point time_12 = std::chrono::system_clock::now();
    // Calculating c2 = aT * b (accelerated variant)
    multiply_v2_aT(aT, b, c2, M, K, N);
    std::chrono::time_point time_22 = std::chrono::system_clock::now();

    // Checking if the functions 'multiply_v0_bT' and 'multiply_v2_aT' result in the same output matrices
    if (!std::equal(vc.begin(), vc.end(), vc2.begin(), vc2.end(), epsilon_equal)) {
        throw std::runtime_error("vc2 != vc");
    }

    // Calculation time
    auto nanosec2 = std::chrono::duration_cast<std::chrono::nanoseconds>(time_22 - time_12).count();
    // Printing output results
    std::cout << "Matrix multiplication version 2: " << nanosec2 * 1e-6 << " ms" << std::endl;


    // Matrix c3 ~ M x N
    float *c3;
    std::vector<float> vc3(M * N);
    c3 = vc3.data();

    std::chrono::time_point time_13 = std::chrono::system_clock::now();
    // Calculating c2 = aT * b (accelerated variant)
    multiply_v3_aT(aT, b, c3, M, K, N);
    std::chrono::time_point time_23 = std::chrono::system_clock::now();

    // Checking if the functions 'multiply_v0_bT' and 'multiply_v2_aT' result in the same output matrices
    if (!std::equal(vc.begin(), vc.end(), vc3.begin(), vc3.end(), epsilon_equal)) {
        throw std::runtime_error("vc3 != vc");
    }

    // Calculation time
    auto nanosec3 = std::chrono::duration_cast<std::chrono::nanoseconds>(time_23 - time_13).count();
    // Printing output results
    std::cout << "Matrix multiplication version 3: " << nanosec3 * 1e-6 << " ms" << std::endl;

    return 0;

//    AVX-512 is defined
//    Matrix multiplication naive (c = a * bT): 571.141 ms
//    Matrix multiplication naive (c = aT * b): 2549.7 ms
//    Matrix multiplication version 1: 2368.79 ms
//    Matrix multiplication version 2: 168.514 ms
//    Matrix multiplication version 3: 67.2334 ms
}
