#!/bin/bash
cd /app
while true
do
        ./viad -conf=/app/.via/via.conf -datadir=/app/.via
        echo viad terminated, restarting in 10s
        sleep 10
done

