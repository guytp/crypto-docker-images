#!/bin/bash
cd /app
if ! ./strat-cli -conf=/app/.strat/strat.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop strat, force killing"
  killall -9 dotnet
fi

