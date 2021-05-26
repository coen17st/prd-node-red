#!/bin/bash
set -e

docker pull docker-registry.theautomation.nl/coen/prd-node-red
docker run --rm -d \
-p 1880:1880 \
-v $(pwd)/data:/data \
--network=home-services \
--name prd-node-red \
docker-registry.theautomation.nl/coen/prd-node-red:latest