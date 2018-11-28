#!/bin/bash
docker run -dti --network host --name kalicoin --mount type=bind,source=/mnt/alts/kali,destination=/app/.kalicoin --restart unless-stopped kalicoin:latest
