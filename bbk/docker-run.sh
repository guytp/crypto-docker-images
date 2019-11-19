#!/bin/bash
docker run -dti --network host --name bbk --mount type=bind,source=/mnt/alts/bbk,destination=/app/.bbk --restart unless-stopped bbk:latest
