#!/bin/bash
cd /app
if ! ./bitcoin-cli -conf=/app/.bern/bern.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop BERNCash, force killing"
  pkill -f -9 ./bernd
fi

