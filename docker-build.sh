#!/bin/bash
PROJECT_ROOT=$(cd "$(dirname "$0")" && pwd)

# Build the docker image
IMAGE_NAME="cpp-env"
docker build -t $IMAGE_NAME \
    -f $PROJECT_ROOT/docker/dockerfile $PROJECT_ROOT/docker
