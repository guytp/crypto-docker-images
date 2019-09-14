#!/bin/bash
docker run -dti --network host --name emc2 --mount type=bind,source=/mnt/alts/emc2,destination=/app/.emc2 --restart unless-stopped emc2:latest
