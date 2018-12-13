#!/bin/bash
cd /app
while true
do
        ./sweepd -conf=/app/.sweep/sweep.conf -datadir=/app/.sweep
        echo Sweepd terminated, restarting in 10s
        sleep 10
done

