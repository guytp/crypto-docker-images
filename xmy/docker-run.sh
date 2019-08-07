#!/bin/bash
docker run -dti --network host --name xmy --mount type=bind,source=/mnt/alts/xmy,destination=/app/.xmy --restart unless-stopped xmy:latest
