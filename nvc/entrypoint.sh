#!/bin/bash
cd /app
while true
do
        ./nvcd -datadir=/app/.nvc
        echo nvcd terminated, restarting in 10s
        sleep 10
done

