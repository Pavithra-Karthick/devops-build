#!/bin/bash

# BUILDING A NEW DOCKER IMAGE

echo " Building the docker image Myimage:v2 "
docker build -t Myimage:v2 .

# TO CHECK IF BUILDING IMAGE WAS SUCCESSFUL

if [ $? -eq 0]; then
  echo "Building image is successful."
else
  echo "Building image failed"
  exit 1
fi
