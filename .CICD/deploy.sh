#!/bin/bash
set -e

# VARIABLES
container_name=${DRONE_REPO_NAME}

# PULL DOCKER IMAGE FROM PRIVATE DOCKER REGISTRY
docker pull docker-registry.theautomation.nl/coen/${container_name}

# STOP DOCKER CONTAINER
docker stop ${container_name}

# REMOVE DOCKER CONTAINER
docker rm ${container_name}

# RUN DOCKER CONTAINER
docker run -d \
-p 1880:1880 \
-v /home/coen/docker-home-services/${container_name}/data:/data \
--network=home-services \
--name ${container_name} \
--restart=always \
--env PGID=1000 \
--env PUID=1000 \
--env TZ=Europe/Amsterdam \
docker-registry.theautomation.nl/coen/${container_name}:latest