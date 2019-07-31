#!/bin/bash
docker run -dti --network host --name pot --mount type=bind,source=/mnt/alts/pot,destination=/app/.pot --restart unless-stopped pot:latest
