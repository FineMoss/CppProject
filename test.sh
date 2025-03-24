#!/bin/bash
source $(dirname "${0}")/common.inc

# Create the build directory if it does not exist
if [ ! -d $TEST_BUILD_PATH ]; then
    mkdir -p $TEST_BUILD_PATH
fi

cmake -S $PROJECT_ROOT/src/test -B $TEST_BUILD_PATH
cmake --build $TEST_BUILD_PATH

ctest --test-dir $TEST_BUILD_PATH
