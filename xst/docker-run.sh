#!/bin/bash
docker run -dti --network host --name xst --mount type=bind,source=/mnt/alts/xst,destination=/app/.xst --restart unless-stopped xst:latest
