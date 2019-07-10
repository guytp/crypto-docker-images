#!/bin/bash
docker run -dti --network host --name bean --mount type=bind,source=/mnt/alts/bean,destination=/app/.bean --restart unless-stopped bean:latest
