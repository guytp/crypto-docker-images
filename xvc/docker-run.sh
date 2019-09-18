#!/bin/bash
docker run -dti --network host --name xvc --mount type=bind,source=/mnt/alts/xvc,destination=/root/.Vcash --restart unless-stopped xvc:latest
