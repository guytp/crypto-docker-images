#!/bin/bash
docker run -dti --network host --name lcc --mount type=bind,source=/mnt/alts/lcc,destination=/app/.lcc --restart unless-stopped lcc:latest
