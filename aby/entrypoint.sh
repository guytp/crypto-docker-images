#!/bin/bash
cd /app
while true
do
        ./abyd -datadir=/app/.aby
        echo abyd terminated, restarting in 10s
        sleep 10
done

