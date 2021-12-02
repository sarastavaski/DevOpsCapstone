#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
# Step 1:
# This is your Docker ID/path
dockerpath=sarastavaski/simple-index:v3

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run simple-index:v3 --image=sarastavaski/simple-index:v3

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward simple-index:v3 8000:80

# Create the deployment
kubectl apply -f deployment.yml

# Create the service that is going to make your pods accessible
kubectl apply -f service.yml