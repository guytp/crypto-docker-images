#!/bin/bash
docker run -dti --network host --name trc --mount type=bind,source=/mnt/alts/trc,destination=/app/.trc --restart unless-stopped trc:latest
