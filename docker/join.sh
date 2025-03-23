#!/bin/bash
source $(dirname "${0}")/common.inc

# Create a volume if it does not exist
if ! docker volume inspect $DOCKER_VOLUME_NAME &>/dev/null; then
    docker volume create \
        -d local \
        -o type=none \
        -o o=bind \
        -o device=$PROJECT_ROOT \
        $DOCKER_VOLUME_NAME
fi

# Start the container it is not running
if ! docker inspect -f '{{.State}}' $DOCKER_CONTAINER_NAME &>/dev/null; then
    echo "Starting docker image: $DOCKER_IMAGE_NAME as container: $DOCKER_CONTAINER_NAME"
    docker run --rm -id \
        -v "$PROJECT_ROOT"/:/CppProject \
        --name $DOCKER_CONTAINER_NAME $DOCKER_IMAGE_NAME
fi

# Join the running container
docker exec -it $DOCKER_CONTAINER_NAME bash
