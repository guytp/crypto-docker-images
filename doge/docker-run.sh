#!/bin/bash
docker run -dti --network host --name doge --mount type=bind,source=/mnt/alts/doge,destination=/app/.doge --restart unless-stopped doge:latest
