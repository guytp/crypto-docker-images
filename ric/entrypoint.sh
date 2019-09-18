#!/bin/bash
cd /app
while true
do
        ./ricd -datadir=/app/.ric -conf=ric.conf
        echo Riecoind terminated, restarting in 10s
        sleep 10
done

