#!/bin/bash
cd /app
while true
do
        ./rddd -datadir=/app/.rdd
        echo rddd terminated, restarting in 10s
        sleep 10
done

