# hello vulkan

## Build

```bash
$ cmake -B build -DEXTERNAL_ALL_BUILD=ON -DCMAKE_BUILD_TYPE=Debug
$ cmake --build build -j $(nproc)
# or just specify cores like: -j 8
```

## Run

```bash
$ ./build/hello-vulkan
```