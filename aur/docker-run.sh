#!/bin/bash
docker run -dti --network host --name aur --mount type=bind,source=/mnt/alts/aur,destination=/app/.aur --restart unless-stopped aur:latest
