#!/bin/bash
docker run -dti --network host --name bsty --mount type=bind,source=/mnt/alts/bsty,destination=/app/.bsty --restart unless-stopped bsty:latest
