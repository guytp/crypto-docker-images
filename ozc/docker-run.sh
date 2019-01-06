#!/bin/bash
docker run -dti --network host --name ozc --mount type=bind,source=/mnt/alts/ozc,destination=/app/.ozc --restart unless-stopped ozc:latest
