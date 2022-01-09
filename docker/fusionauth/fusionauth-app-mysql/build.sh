#!/usr/bin/env bash

DOCKER_HUB_USER=mujahid1005011
FUSIONAUTH_VERSION=1.32.1

docker build -t ${DOCKER_HUB_USER}/fusionauth-app-mysql:${FUSIONAUTH_VERSION} .
docker build -t ${DOCKER_HUB_USER}/fusionauth-app-mysql:latest .

docker login --username=${DOCKER_HUB_USER}

docker push ${DOCKER_HUB_USER}/fusionauth-app-mysql:1.32.1
docker push ${DOCKER_HUB_USER}/fusionauth-app-mysql:latest
