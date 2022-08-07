#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=siyfa/udacity-project4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker login -u siyfa
docker tag ml-project $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest
