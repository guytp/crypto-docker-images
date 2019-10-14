#!/bin/bash
cd /app
if ! ./blk-cli -conf=/app/.blk/blk.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop blk, force killing"
  pkill -f -9 ./blkd
fi

