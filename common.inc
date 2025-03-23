#!/bin/bash

declare PROJECT_ROOT=$(cd "$(dirname "$0")" && pwd)

declare DOCKER_IMAGE_NAME="cpp-project-env"
declare DOCKER_VOLUME_NAME="cpp-project-volume"
declare DOCKER_CONTAINER_NAME="dev-env"
