#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=sarastavaski/capstone-containter

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
#docker login --username sarastavaski
docker login --username $1 --password $2
docker tag capstone-containter $dockerpath
# fixed login
# Step 3:
# Push image to a docker repository
docker push sarastavaski/capstone-containter
#docker pull capstone-containter