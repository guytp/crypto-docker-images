#!/bin/bash
docker run -dti --network host --name sweep --mount type=bind,source=/mnt/alts/sweep,destination=/app/.sweep --restart unless-stopped sweep:latest
