#!/bin/bash

# Find out what directory this script lives in and cd into it
WORK_DIR="$(realpath -m "$(dirname "$0")")"
cd "${WORK_DIR}"

# Define image name
IMAGE_NAME="flask-example"

# Get timestamp (Year->Minute without any separators)
DATE_NOW=$(date +%Y%m%d%H%M)

# Build image: use timestamp as version tag
docker build -t $IMAGE_NAME:$DATE_NOW ./

# Tag this build as latest
docker tag $IMAGE_NAME:$DATE_NOW $IMAGE_NAME:latest
