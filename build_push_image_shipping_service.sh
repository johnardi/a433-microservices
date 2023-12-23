#!/bin/bash

# Build image dengan tag v1
docker build -t ghcr.io/johnardi/shipping-service:latest .

# Melihat daftar image Docker yang ada
docker images

# Menggunakan environment variable $CR_PAT untuk login ke GitHub
echo $CR_PAT | docker login ghcr.io -u johnardi --password-stdin

# Mengunggah image dengan tag latest
docker push ghcr.io/johnardi/shipping-service:latest
