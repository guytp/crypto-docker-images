#!/bin/bash
docker run -dti --network host --name drz --mount type=bind,source=/mnt/alts/drz,destination=/app/.drz --restart unless-stopped drz:latest
