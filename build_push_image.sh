#!/bin/bash

# Build a Docker image from the Dockerfile
docker build -t item-app:v1 .

# List local Docker images
docker images

# Log in to Docker Hub
cat ../dockerpashub.txt | docker login -u ardi0104 --password-stdin

# Rename the image to match Docker Hub format
docker tag item-app:v1 ardi0104/item-app:v1

# Push the image to Docker Hub Packages
docker push ardi0104/item-app:v1