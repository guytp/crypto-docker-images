#!/bin/bash
if [ -z "$1" ]
then
      echo "Name of coin required"
      exit 0
fi
docker rm $1
docker run -dti --network host --name $1 --mount type=bind,source=/mnt/alts/$1,destination=/app/.$1 --restart unless-stopped zapplecoins.azurecr.io/$1:latest
