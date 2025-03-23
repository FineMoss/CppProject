#!/bin/bash
source $(dirname "${0}")/common.inc

# Build the docker image
docker build -t $DOCKER_IMAGE_NAME \
    -f $PROJECT_ROOT/docker/dockerfile $PROJECT_ROOT/docker
