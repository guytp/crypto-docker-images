#!/bin/bash
docker run -dti --network host --name nav --mount type=bind,source=/mnt/alts/nav,destination=/app/.nav --restart unless-stopped nav:latest
