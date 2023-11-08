#!/bin/bash

# Build a Docker image from the Dockerfile
docker build -t item-app:v1 .

# List local Docker images
docker images

# Log in to GitHub Packages
cat ../dockerpashub.txt | docker login -u ardi0104 --password-stdin

# Rename the image to match GitHub Packages format
docker tag item-app:v1 ardi0104/item-app:v1

# Push the image to GitHub Packages
docker push ardi0104/item-app:v1