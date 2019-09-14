#!/bin/bash
cd /app
if ! ./emc2-cli -conf=/app/.emc2/emc2.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop emc2, force killing"
  pkill -f -9 ./emc2d
fi

