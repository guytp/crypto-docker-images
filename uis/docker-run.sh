#!/bin/bash
docker run -dti --network host --name uis --mount type=bind,source=/mnt/alts/uis,destination=/app/.uis --restart unless-stopped uis:latest
