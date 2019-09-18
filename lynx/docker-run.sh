#!/bin/bash
docker run -dti --network host --name lynx --mount type=bind,source=/mnt/alts/lynx,destination=/app/.lynx --restart unless-stopped lynx:latest
