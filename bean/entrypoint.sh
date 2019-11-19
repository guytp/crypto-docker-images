#!/bin/bash
cd /app
while true
do
        ./beand -datadir=/app/.bean -conf=bean.conf
        echo beand terminated, restarting in 10s
        sleep 10
done

