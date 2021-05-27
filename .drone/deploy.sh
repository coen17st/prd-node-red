#!/bin/bash
set -e

# PULL IMAGE FROM PRIVATE REGISTRY
docker pull docker-registry.theautomation.nl/coen/prd-node-red

# RUN DOCKER CONTAINER
docker run -d \
-p 1880:1880 \
-v /home/coen/docker-home-services/prd-node-red/data:/data \
--network=home-services \
--name prd-node-red-app \
--restart=always \
--env PGID=1000 \
--env PUID=1000 \
--env TZ=Europe/Amsterdam \
docker-registry.theautomation.nl/coen/prd-node-red:latest