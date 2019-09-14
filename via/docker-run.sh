#!/bin/bash
docker run -dti --network host --name via --mount type=bind,source=/mnt/alts/via,destination=/app/.via --restart unless-stopped via:latest
