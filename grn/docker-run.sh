#!/bin/bash
docker run -dti --network host --name grn --mount type=bind,source=/mnt/alts/grn,destination=/app/.granite --restart unless-stopped grn:latest
