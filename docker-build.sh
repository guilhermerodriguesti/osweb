#!/bin/bash
REPO="infraestruturadevops"
PORT="8080"
IMAGE_NAME=$(basename "$PWD")
TAG=`git rev-parse --short HEAD`
CONTAINER="${IMAGE_NAME}"

echo "CREATE REPOSITORY"

echo "LOGIN  REGISTRY"
cat ~/docker-login.txt | docker login --username "${REPO}" --password-stdin

echo "BUILD IMAGE"
docker build -t "${REPO}/${IMAGE_NAME}:${TAG}" -t "${REPO}/${IMAGE_NAME}:latest" .

echo "PUSH IMAGE"
docker push "${REPO}/${IMAGE_NAME}:${TAG}"
docker push "${REPO}/${IMAGE_NAME}:latest"

echo "RUN CONTAINER"
#docker run -p 6080:6080 "${IMAGE_NAME}:latest"

#echo "STOP"
#docker stop ${CONTAINER}

echo "DOCKER PULL"
docker pull "${REPO}/${IMAGE_NAME}:${TAG}"


