#!/bin/bash
docker run -dti --network host --name rupee --mount type=bind,source=/mnt/alts/rup,destination=/app/.RupeeCore --restart unless-stopped rupee:latest
