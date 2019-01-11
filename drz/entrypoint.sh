#!/bin/bash
cd /app
while true
do
        ./droidzd -datadir=/app/.droidz -conf=/app/.droidz/droidz.conf
        echo Droidzd terminated, restarting in 10s
        sleep 10
done

