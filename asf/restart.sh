#!/bin/bash
cd /app
if ! ./asf-cli -conf=/app/.asf/asf.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop asf, force killing"
  pkill -f -9 ./asfd
fi

