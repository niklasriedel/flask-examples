#!/bin/bash

CONTAINER="flask-example"

docker-compose down
[ "$1" == --reset ] \
    && docker image rm "$CONTAINER":latest \
    && echo "Deleted container image"
