#!/bin/bash
docker run -dti --network host --name bern --mount type=bind,source=/mnt/alts/bern,destination=/app/.bern --restart unless-stopped bern:latest
