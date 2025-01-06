#!/bin/bash

if [ -f "build/hello-vulkan" ]; then
    ./build/hello-vulkan
else
    echo "Executable not found. Please build the project first."
    exit 1
fi