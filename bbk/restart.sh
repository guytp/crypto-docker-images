#!/bin/bash
cd /app
if ! ./bbk-cli -conf=/app/.bbk/bbk.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop bbk, force killing"
  pkill -f -9 ./bbkd
fi

