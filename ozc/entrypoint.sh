#!/bin/bash
cd /app
while true
do
        ./ozcd -datadir=/app/.ozc -conf=/app/.ozc/ozc.conf
        echo Ozcd terminated, restarting in 10s
        sleep 10
done

