#!/bin/bash
docker run -dti --network host --name infx --mount type=bind,source=/mnt/alts/infx,destination=/app/.infx --restart unless-stopped infx:latest
