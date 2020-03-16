FROM neildhar/glow

## Clone glow repo
RUN git clone https://github.com/pytorch/glow.git && \
    cd glow && git submodule update --init --recursive

## Build release or debug version depending on build arg
ARG BUILD_TYPE

RUN mkdir build_${BUILD_TYPE} && cd build_${BUILD_TYPE} && \
    cmake -G Ninja -DCMAKE_BUILD_TYPE=${BUILD_TYPE} ../glow && \
    ninja all && \
    if [ ${BUILD_TYPE} = "Release" ]; then \
        python ../glow/utils/download_datasets_and_models.py --all-datasets; \
    fi

