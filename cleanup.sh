#!/bin/bash

IMAGE_NAME="flask-example"
FULL_COMPOSE_FILE="docker-compose.example05.yaml"

# If --reset is specified, nuke everything...
if [ "$1" == --reset ]; then
	docker-compose -f "${FULL_COMPOSE_FILE}" down -v --rmi all
	MONGO_IMAGES=$(docker image ls -a --filter "reference=mongo" -q 2>/dev/null)
	if [ "${MONGO_IMAGES}" != "" ]; then
		docker rmi -f "${MONGO_IMAGES}"
	fi
	exit 0
fi

# If --reset is not specified, just make sure everything is shut down
docker-compose -f docker-compose.example05.yaml down
