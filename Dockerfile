FROM ubuntu:latest
LABEL authors="ir"
RUN apt update
RUN apt install -y binutils gcc g++ gcc-13 g++-13 ninja-build cmake llvm-dev
#RUN cmake -DCMAKE_BUILD_TYPE=Release -DUSE_LLVM=ON ..
#RUN make -j6
#RUN export PYTHONPATH=/home/ir/projects/tvm_learn/tvm/build/python/
#RUN python gallery/how_to/optimize_operators/opt_gemm.py

ENTRYPOINT ["bash"]