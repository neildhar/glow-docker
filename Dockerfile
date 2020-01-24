FROM ubuntu:18.04

### Arguments ###
ARG USERNAME=glow
ARG WORKDIR=/home/$USERNAME

# Create user glow
RUN useradd -m $USERNAME

WORKDIR $WORKDIR

# Update and install tools
RUN apt-get update && apt-get install -y clang clang-8 cmake graphviz libpng-dev \
    libprotobuf-dev llvm-8 llvm-8-dev ninja-build protobuf-compiler wget \
    opencl-headers libgoogle-glog-dev git sudo \
    && \
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

USER $USERNAME
RUN mkdir /home/$USERNAME/dev

CMD ["/bin/bash"]
