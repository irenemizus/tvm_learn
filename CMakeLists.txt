cmake_minimum_required(VERSION 3.5)
#add_compile_options(-fsanitize=address,undefined)
#add_link_options(-fsanitize=address,undefined)

set(USE_LLVM ON CACHE BOOL "" FORCE)
add_subdirectory(tvm)

project(tvm_learn)
#set(CMAKE_CXX_FLAGS "-march=skylake-avx512 -O2")

add_executable(tvm_learn main.cpp)
target_compile_features(tvm_learn PUBLIC cxx_std_17)
#target_link_libraries(tvm_learn PUBLIC asan)
