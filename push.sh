#!/bin/bash
docker tag $1:latest zapplecoins.azurecr.io/$1
docker push zapplecoins.azurecr.io/$1
