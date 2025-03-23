#!/bin/bash
PROJECT_ROOT=$(cd "$(dirname "$0")" && pwd)

# Build the docker image
docker build -t cpp-env \
    -f $PROJECT_ROOT/docker/dockerfile $PROJECT_ROOT/docker
