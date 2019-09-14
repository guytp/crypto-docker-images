#!/bin/bash
cd /app
if ! ./via-cli -conf=/app/.via/via.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop via, force killing"
  pkill -f -9 ./viad
fi

