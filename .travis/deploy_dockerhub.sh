#!/bin/bash

docker login -u=$DOCKER_USER -p=$DOCKER_PASS

if [ "$TRAVIS_BRANCH" = "master" ]; then
	TAG="latest"
else
	TAG="$TRAVIS_BRANCH"
fi

docker build -f Dockerfile -t redklouds/cicd-buzz:$TAG .
docker push redklouds/cicd-buzz:$TAG
