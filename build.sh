#!/bin/bash

# BUILDING A NEW DOCKER IMAGE

echo " Building the docker image Myimage:v2 "
docker build -t myimage:v2 .

# TO CHECK IF BUILDING IMAGE WAS SUCCESSFUL

if [ $? -eq 0 ]; then
  echo "Building image is successful."
else
  echo "Building image failed"
  exit 1
fi

# Docker LOGIN

echo " LOGGING INTO DOCKER "

docker login -u chadayandipavithra -p $DOCKER_PASSWD

# DOCKER RETAG

docker tag myimage:v2 chadayandipavithra/dev:$IMAGE_TAG

echo " Verifying docker images"

docker images

# DOCKER PUSH	

docker push chadayandipavithra/dev:$IMAGE_TAG


