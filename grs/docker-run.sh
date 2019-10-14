#!/bin/bash
docker run -dti --network host --name grs --mount type=bind,source=/mnt/alts/grs,destination=/app/.grs --restart unless-stopped grs:latest
