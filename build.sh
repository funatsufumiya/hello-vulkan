#!/bin/bash

if [ -z "$CORES" ]; then
    if [ -x "$(command -v nproc)" ]; then
        CORES=$(nproc)
    elif [ -x "$(command -v sysctl)" ]; then
        CORES=$(sysctl -n hw.logicalcpu)
    else
        CORES=4
    fi
fi

echo "Building with ${CORES} cores"

if [ ! -d "build" ]; then
    cmake -B build -DEXTERNAL_ALL_BUILD=ON -DCMAKE_BUILD_TYPE=Debug
fi

cmake --build build -j $CORES