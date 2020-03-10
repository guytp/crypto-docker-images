#!/bin/bash
cd /app
if ! ./zet-cli -conf=/app/.zet/zet.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop zet, force killing"
  pkill -f -9 ./zetd
fi

