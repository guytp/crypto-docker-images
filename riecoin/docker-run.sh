#!/bin/bash
docker run -dti --network host --name riecoin --mount type=bind,source=/mnt/alts/ric,destination=/app/.riecoin --restart unless-stopped riecoin:latest
