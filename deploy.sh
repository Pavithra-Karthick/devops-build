#!/bin/bash

#Deploying using docker compose

echo "deploying image into the server"

sed -i -e "s/IMAGETAG/$IMAGETAG/g" docker-compose.yml

docker compose down
docker system prune -af

docker compose up -d 


