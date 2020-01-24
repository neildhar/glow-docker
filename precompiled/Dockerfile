FROM neildhar/glow:light

## Clone glow repo
RUN git clone https://github.com/pytorch/glow.git && \
    cd glow && git submodule update --init --recursive

## Build debug version
RUN mkdir build_Debug && cd build_Debug && \
    cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug ../glow && \
    ninja all

## Build release version
RUN mkdir build_Release && cd build_Release && \
    cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ../glow && \
    ninja all && \
    python ../glow/utils/download_datasets_and_models.py --all-datasets

