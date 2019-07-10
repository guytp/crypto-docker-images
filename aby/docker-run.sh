#!/bin/bash
docker run -dti --network host --name aby --mount type=bind,source=/mnt/alts/aby,destination=/app/.aby --restart unless-stopped aby:latest
