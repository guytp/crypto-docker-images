#!/bin/bash
docker run -dti --network host --name nvc --mount type=bind,source=/mnt/alts/nvc,destination=/app/.nvc --restart unless-stopped nvc:latest
