#!/bin/bash
docker run -dti --network host --name clam --mount type=bind,source=/mnt/alts/clam,destination=/app/.clam --restart unless-stopped clam:latest
