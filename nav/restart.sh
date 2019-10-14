#!/bin/bash
cd /app
if ! ./nav-cli -conf=/app/.nav/nav.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop nav, force killing"
  pkill -f -9 ./navd
fi

