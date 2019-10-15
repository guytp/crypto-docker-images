#!/bin/bash
docker run -dti --network host --name strat --mount type=bind,source=/mnt/alts/strat,destination=/app/.strat --restart unless-stopped strat:latest
