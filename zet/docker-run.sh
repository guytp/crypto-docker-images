#!/bin/bash
docker run -dti --network host --name zet --mount type=bind,source=/mnt/alts/zet,destination=/app/.zet --restart unless-stopped zet:latest
