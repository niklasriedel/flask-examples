#!/bin/bash

IMAGE_NAME="flask-example"

docker-compose down
[ "$1" == --reset ] \
    && docker image rm "$IMAGE_NAME":latest \
    && docker rmi -f $(docker image ls -a --filter "reference=$IMAGE_NAME" -q) \
    && echo "Deleted container image"
