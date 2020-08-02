#!/bin/bash

EXAMPLE_NUMBER=${1}
EXAMPLE_NUMBER_LEN=${#EXAMPLE_NUMBER}

if [ ${EXAMPLE_NUMBER_LEN} -eq 2 ]; then
	: # looks good so pass
elif [ ${EXAMPLE_NUMBER_LEN} -eq 1 ]; then
	EXAMPLE_NUMBER="0${EXAMPLE_NUMBER}"
else
	echo "Invalid example specified - aborting" ; exit 1
fi

echo ${EXAMPLE_NUMBER}

# - Start docker container with docker-compose
docker-compose -f docker-compose.example${EXAMPLE_NUMBER}.yaml up
docker-compose -f docker-compose.example${EXAMPLE_NUMBER}.yaml down
