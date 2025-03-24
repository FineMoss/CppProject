#!/bin/bash
source $(dirname "${0}")/common.inc

# Create the build directory if it does not exist
BUILD_FILES_PATH="$MAIN_BUILD_PATH/CMakeFiles"
BIN_PATH="$MAIN_BUILD_PATH/bin"

if [ ! -d $BUILD_FILES_PATH ]; then
    mkdir -p $BUILD_FILES_PATH
fi

if [ ! -d $BIN_PATH ]; then
    mkdir -p $BIN_PATH
fi

# Generate build files
cmake -S $PROJECT_ROOT/src -B $BUILD_FILES_PATH \
    -DCMAKE_RUNTIME_OUTPUT_DIRECTORY=$BIN_PATH

# Compile the project
cmake --build $BUILD_FILES_PATH
