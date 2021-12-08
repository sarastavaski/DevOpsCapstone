#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
# Docker ID/path
dockerpath=sarastavaski/capstone-containter

# Run the Docker Hub container with kubernetes
kubectl run capstone-containter --image=sarastavaski/capstone-containter

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward capstone-containter 8000:80

# Create deployment
kubectl apply -f deployment.yml

# Create the service to make pods accessible
kubectl apply -f service.yml

# Get Container Name from current deployment
kubectl get deployment capstone-containter 

# Update Deployment - SHOULD WORK NOW
# kubectl set image deployment/<Deployment-Name> <Container-Name>=<Container-Image> --record=true
# kubectl set image deployment/my-first-deployment kubenginx=stacksimplify/kubenginx:2.0.0 --record=true
