#!/bin/sh

env | grep -i travis

DOCKER_REPO=barakci

DOCKER_NAME=$DOCKER_USERNAME/$DOCKER_REPO

if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi

CONTAINER_ID=$DOCKER_NAME:$TAG

docker build -t $CONTAINER_ID .
docker run -d -p 8080:8080 $CONTAINER_ID
docker ps

docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD";
docker push $CONTAINER_ID;
