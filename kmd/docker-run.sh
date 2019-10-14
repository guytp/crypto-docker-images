#!/bin/bash
docker run -dti --network host --name kmd --mount type=bind,source=/mnt/alts/kmd,destination=/app/.kmd --restart unless-stopped kmd:latest
