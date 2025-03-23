#!/bin/bash
PROJECT_ROOT=$(cd "$(dirname "$0")" && pwd)

# Create the build directory if it does not exist
if [ ! -d "$PROJECT_ROOT/build" ]; then
    mkdir build
fi

cmake -S $PROJECT_ROOT/src -B $PROJECT_ROOT/build 
cmake --build $PROJECT_ROOT/build
