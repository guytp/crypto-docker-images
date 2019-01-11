#!/bin/bash
docker run -dti --network host --name grz --mount type=bind,source=/mnt/alts/drz,destination=/app/.droidz --restart unless-stopped drz:latest
