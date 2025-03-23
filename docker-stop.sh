#!/bin/bash
PROJECT_ROOT=$(cd "$(dirname "$0")" && pwd)

# Stop the container and remove it
CONTAINER_NAME="cpp-env"
docker stop $CONTAINER_NAME
