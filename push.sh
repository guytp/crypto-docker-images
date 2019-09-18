#!/bin/bash
docker tag $1:latest zapple.azurecr.io/$1
docker push zapple.azurecr.io/$1
