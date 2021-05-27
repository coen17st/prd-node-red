#!/bin/bash
set -e

docker pull docker-registry.theautomation.nl/coen/prd-node-red

docker run -d \
-p 1880:1880 \
-v /home/coen/docker-home-services/prd-node-red/data:/data \
--network=home-services \
--name prd-node-red \
--restart=always \
docker-registry.theautomation.nl/coen/prd-node-red:latest