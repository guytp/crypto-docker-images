#!/bin/bash
docker run -dti --network host --name asf --mount type=bind,source=/mnt/alts/asf,destination=/app/.asf --restart unless-stopped asf:latest
