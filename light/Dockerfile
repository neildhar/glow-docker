FROM ubuntu:18.04

ARG WORKDIR=/home/root/dev

# Create working folder
RUN mkdir -p $WORKDIR
WORKDIR $WORKDIR

# Update and install tools
RUN apt-get update && apt-get install -y clang clang-8 cmake graphviz libpng-dev \
    libprotobuf-dev llvm-8 llvm-8-dev ninja-build protobuf-compiler wget \
    opencl-headers libgoogle-glog-dev git python-numpy && \
    apt-get clean && \
    # Clear apt caches to reduce image size
    rm -rf /var/lib/apt/lists/*

# Point clang to llvm-8 version
RUN update-alternatives --install /usr/bin/clang clang \
    /usr/lib/llvm-8/bin/clang 50 && \
    update-alternatives --install /usr/bin/clang++ clang++ \
    /usr/lib/llvm-8/bin/clang++ 50

# Point default C/C++ compiler to clang
RUN update-alternatives --set cc /usr/bin/clang && \
    update-alternatives --set c++ /usr/bin/clang++

# Install fmt
RUN git clone https://github.com/fmtlib/fmt && \
    mkdir fmt/build && \
    cd fmt/build && \
    cmake .. && make && \
    make install

# Clean up
RUN rm -rf fmt
