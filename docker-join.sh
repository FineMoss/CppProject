#!/bin/bash
PROJECT_ROOT=$(cd "$(dirname "$0")" && pwd)

# Create a volume if it does not exist
VOLUME_NAME="project-volume"
if ! docker volume inspect $VOLUME_NAME &>/dev/null; then
    docker volume create \
        -d local \
        -o type=none \
        -o o=bind \
        -o device=$PROJECT_ROOT \
        $VOLUME_NAME
fi

# Check if the container is running
IMAGE_NAME="cpp-env"
CONTAINER_NAME="cpp-env"
if ! docker inspect -f '{{.State}}' $CONTAINER_NAME &>/dev/null; then
    # Run the dev container
    echo "Starting container: $CONTAINER_NAME"
    docker run --rm -id \
        -v "$PROJECT_ROOT"/:/CppProject \
        --name $IMAGE_NAME $CONTAINER_NAME
fi

# Join the running container
docker exec -it $CONTAINER_NAME bash
