#!/bin/bash
cd /app
if ! ./dgc-cli -conf=/app/.dgc/dgc.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop dgc, force killing"
  pkill -f -9 ./dgcd
fi

