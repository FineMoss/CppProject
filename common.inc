#!/bin/bash

declare PROJECT_ROOT=$(cd "$(dirname "$0")" && pwd)
declare BUILD_PATH="$PROJECT_ROOT/build"
declare MAIN_BUILD_PATH="$BUILD_PATH/main"
declare TEST_BUILD_PATH="$BUILD_PATH/test"
