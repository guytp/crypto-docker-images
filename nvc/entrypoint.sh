#!/bin/bash
cd /app
while true
do
        ./nvcd -datadir=/app/.nvc -conf=nvc.conf
        echo nvcd terminated, restarting in 10s
        sleep 10
done

