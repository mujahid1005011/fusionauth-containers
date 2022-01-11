#!/usr/bin/env bash

DOCKER_HUB_USER=mujahid1005011
FUSIONAUTH_VERSION=1.32.1

docker build -t ${DOCKER_HUB_USER}/fusionauth-app-mysql:${FUSIONAUTH_VERSION} --network="host" .
docker build -t ${DOCKER_HUB_USER}/fusionauth-app-mysql:latest --network="host" .

docker login --username=${DOCKER_HUB_USER}

docker push ${DOCKER_HUB_USER}/fusionauth-app-mysql:1.32.1
docker push ${DOCKER_HUB_USER}/fusionauth-app-mysql:latest
