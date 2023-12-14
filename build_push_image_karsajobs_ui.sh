#!/bin/bash

#build image docker dengan nama karsajobs-ui & tag latest
docker build -t ghcr.io/johnardi/karsajobs-ui:latest .
echo "\n"
#login ke GitHub menggunakan token (export CR_PAT=YOUR_TOKEN)
echo $CR_PAT | docker login ghcr.io -u johnardi --password-stdin
echo "\n"
#push the image to GitHub Packages
docker push ghcr.io/johnardi/karsajobs-ui:latest
