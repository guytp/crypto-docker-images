#!/bin/bash
cd /app
while true
do
        ./bernd -conf=/app/.bern/bern.conf -datadir=/app/.bern
        echo Bernd terminated, restarting in 10s
        sleep 10
done

