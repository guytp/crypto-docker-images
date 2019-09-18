#!/bin/bash
cd /app
while true
do
        ./xstd -datadir=/app/.xst -conf=/app/.xst/xst.conf
        echo xstd terminated, restarting in 10s
        sleep 10
done

