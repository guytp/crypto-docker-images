#!/bin/bash
cd /app
while true
do
        ./rddd -datadir=/app/.rdd -conf=rdd.conf
        echo rddd terminated, restarting in 10s
        sleep 10
done

