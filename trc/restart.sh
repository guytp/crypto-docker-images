#!/bin/bash
cd /app
if ! ./trc-cli -conf=/app/.trc/trc.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop trc, force killing"
  pkill -f -9 ./trcd
fi

