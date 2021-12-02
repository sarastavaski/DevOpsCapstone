#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=simple-index:v3 . 

# Step 2: 
# List docker images
docker image ls


# Step 3: 
# Run flask app
# publish the container’s port to a host port
docker run -p 8000:80 simple-index:v3