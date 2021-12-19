#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=eslamhosney/udacity_devops_engineer_capstone

# Step 2
# Run the Docker Hub container with kubernetes
docker pull eslamhosney/udacity_devops_engineer_capstone:latest
kubectl run udacity-devops-engineer-capstone-deploy\
	    --image=eslamhosney/udacity_devops_engineer_capstone\
		--port=80 --labels app=udacity-devops-engineer-capstone-deploy

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward udacity-devops-engineer-capstone-deploy 8000:80