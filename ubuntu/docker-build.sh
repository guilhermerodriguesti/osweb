#!/bin/bash

IMAGE_NAME=$(basename "$PWD")
TAG=`git rev-parse --short HEAD`
echo "BUILD IMAGE AND PUSH"

docker build -t "${IMAGE_NAME}:${TAG}" -t "${IMAGE_NAME}:latest" .
docker push "${IMAGE_NAME}:${TAG}"
docker push "${IMAGE_NAME}:latest"
docker run -p 6080:6080 "${IMAGE_NAME}:latest"