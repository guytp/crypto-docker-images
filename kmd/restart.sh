#!/bin/bash
cd /app
if ! ./kmd-cli -conf=/app/.kmd/kmd.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop kmd, force killing"
  pkill -f -9 ./kmdd
fi

