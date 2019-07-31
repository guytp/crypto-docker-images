#!/bin/bash
docker run -dti --network host --name rdd --mount type=bind,source=/mnt/alts/rdd,destination=/app/.rdd --restart unless-stopped rdd:latest
