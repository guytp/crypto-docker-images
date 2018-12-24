#!/bin/bash
cd /app
while true
do
        ./riecoind -datadir=/app/.riecoin
        echo Riecoind terminated, restarting in 10s
        sleep 10
done

