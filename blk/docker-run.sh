#!/bin/bash
docker run -dti --network host --name blk --mount type=bind,source=/mnt/alts/blk,destination=/app/.blk --restart unless-stopped blk:latest
