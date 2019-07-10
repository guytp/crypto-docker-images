#!/bin/bash
docker run -dti --network host --name xpm --mount type=bind,source=/mnt/alts/xpm,destination=/app/.xpm --restart unless-stopped xpm:latest
