#!/bin/bash
set -e

# PULL IMAGE FROM PRIVATE REGISTRY
docker pull docker-registry.theautomation.nl/coen/${DRONE_REPO_NAME}

# RUN DOCKER CONTAINER
docker run -d \
-p 1880:1880 \
-v /home/coen/docker-home-services/${DRONE_REPO_NAME}/data:/data \
--network=home-services \
--name ${DRONE_REPO_NAME} \
--restart=always \
--env PGID=1000 \
--env PUID=1000 \
--env TZ=Europe/Amsterdam \
docker-registry.theautomation.nl/coen/${DRONE_REPO_NAME}:latest