#!/bin/bash
PROJECT_ROOT=$(cd "$(dirname "$0")" && pwd)

# Create the build directory if it does not exist
BUILD_PATH="$PROJECT_ROOT/build/test"
if [ ! -d $BUILD_PATH ]; then
    mkdir -p $BUILD_PATH
fi

cmake -S $PROJECT_ROOT/src/test -B $BUILD_PATH
cmake --build $BUILD_PATH

ctest --test-dir $BUILD_PATH
