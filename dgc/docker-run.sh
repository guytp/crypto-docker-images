#!/bin/bash
docker run -dti --network host --name dgc --mount type=bind,source=/mnt/alts/dgc,destination=/app/.dgc --restart unless-stopped dgc:latest
