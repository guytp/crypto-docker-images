#!/bin/bash
cd /app
if ! ./bitcoin-cli -conf=/app/.uis/uis.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop uis, force killing"
  pkill -f -9 ./uisd
fi

