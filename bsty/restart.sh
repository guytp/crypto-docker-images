#!/bin/bash
cd /app
if ! ./bsty-cli -conf=/app/.bsty/bsty.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop bsty, force killing"
  pkill -f -9 ./bstyd
fi

