# hello vulkan

## Build

./build.sh

```bash
$ cmake -B build -DEXTERNAL_ALL_BUILD=ON -DCMAKE_BUILD_TYPE=Debug
$ CORES=4 # or CORES=$(nproc) or CORES=$(sysctl -n hw.logicalcpu)
$ cmake --build build -j $CORES
```

## Run

./run.sh

```bash
$ ./build/hello-vulkan
```