#!/bin/bash
docker run -dti --network host --name kali --mount type=bind,source=/mnt/alts/kali,destination=/app/.kali --restart unless-stopped kali:latest
