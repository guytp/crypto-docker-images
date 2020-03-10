#!/bin/bash
cd /app
if ! ./doge-cli -conf=/app/.doge/doge.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop doge, force killing"
  pkill -f -9 ./doged
fi

