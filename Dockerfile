FROM ubuntu:latest
LABEL authors="ir"
RUN apt update
RUN apt install -y binutils gcc g++ gcc-13 g++-13 ninja-build cmake

ENTRYPOINT ["bash"]