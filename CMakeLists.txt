cmake_minimum_required(VERSION 3.5)
project(tvm_learn)
set(CMAKE_CXX_FLAGS "-march=skylake-avx512") #skylake-avx512

add_executable(tvm_learn main.cpp)
target_compile_features(tvm_learn PUBLIC cxx_std_17)