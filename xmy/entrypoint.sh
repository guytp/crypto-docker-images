#!/bin/bash
cd /app
while true
do
        ./xmyd -datadir=/app/.xmy -conf=xmy.conf
        echo xmyd terminated, restarting in 10s
        sleep 10
done

