#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Step 1:
# Build image and add a descriptive tag 
docker build --tag=capstone-containter . 
# Step 2: 
# List docker images
docker image ls


# Step 3: 
# Run app
# publish the container’s port to a host port
#docker run -p 8000:80 capstone-containter
docker run -d -p 8000:80 capstone-containter


 Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=sarastavaski/capstone-containter

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username sarastavaski
#docker login --username $1 --password $2
docker tag capstone-containter:latest $dockerpath:v2

# Push image to docker repository
docker push sarastavaski/capstone-containter:v2

aws eks --region us-west-1 update-kubeconfig --name capstone-deployment

# trigger rolling update
kubectl set image deployment/capstone-rolling-update capstone-html-container=sarastavaski/capstone-containter:v2

# describe deployment and services
kubectl get deployment capstone-rolling-update
kubectl get services capstone-rolling-update