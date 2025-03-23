#!/bin/bash
PROJECT_ROOT=$(cd "$(dirname "$0")" && pwd)

# Create a volume if it does not exist
if ! docker volume inspect project-volume &>/dev/null; then
    docker volume create \
        -d local \
        -o type=none \
        -o o=bind \
        -o device=$PROJECT_ROOT \
        project-volume
fi

# Run and join the dev container
docker run --rm -it \
    -v "$PROJECT_ROOT"/:/CppProject \
    --name cpp-env cpp-env
