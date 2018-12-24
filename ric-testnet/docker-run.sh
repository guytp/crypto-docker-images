#!/bin/bash
docker run -dti --network host --name riecoin-testnet --mount type=bind,source=/mnt/alts/ric/testnet,destination=/app/.riecoin --restart unless-stopped riecoin-testnet:latest
