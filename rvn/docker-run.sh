#!/bin/bash
docker run -dti --network host --name rvn --mount type=bind,source=/mnt/alts/rvn,destination=/app/.rvn --restart unless-stopped rvn:latest
