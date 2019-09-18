#!/bin/bash
cd /app
if ! ./lynx-cli -conf=/app/.lynx/lynx.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop lynx, force killing"
  pkill -f -9 ./lynxd
fi

