#!/bin/bash
docker run -dti --network host --name ltz --mount type=bind,source=/mnt/alts/ltz,destination=/app/.ltz --restart unless-stopped ltz:latest
