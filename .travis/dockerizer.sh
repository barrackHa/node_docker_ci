#!/bin/bash

docker build -t barakh1985/barakci .
docker run -d -p 8080:8080 barakh1985/barakci
docker ps
#if [ "$TRAVIS_BRANCH" == "master" ]; then
docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD";
docker push barakh1985/barakci;
#fi