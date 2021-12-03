#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

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
docker run -d 8000:80 capstone-containter