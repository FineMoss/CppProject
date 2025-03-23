#!/bin/bash
source $(dirname "${0}")/common.inc

# Stop the container and remove it
docker stop $DOCKER_CONTAINER_NAME
