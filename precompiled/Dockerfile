FROM neildhar/glow:light

## Clone glow repo
RUN git clone https://github.com/pytorch/glow.git && \
    cd glow && git submodule update --init --recursive

## Build release or debug version depending on build arg
ARG BUILDTYPE

RUN mkdir build_$BUILDTYPE && cd build_$BUILDTYPE && \
    cmake -G Ninja -DCMAKE_BUILD_TYPE=$BUILDTYPE ../glow && \
    ninja all

RUN if [ $BUILDTYPE = "Release" ]; then \
        python ../glow/utils/download_datasets_and_models.py --all-datasets; \
    fi

