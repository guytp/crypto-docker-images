#!/bin/bash
cd /app
if ! ./grs-cli -conf=/app/.grs/grs.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop grs, force killing"
  pkill -f -9 ./grsd
fi

