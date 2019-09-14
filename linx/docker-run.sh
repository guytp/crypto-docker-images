#!/bin/bash
docker run -dti --network host --name linx --mount type=bind,source=/mnt/alts/linx,destination=/app/.linx --restart unless-stopped linx:latest
