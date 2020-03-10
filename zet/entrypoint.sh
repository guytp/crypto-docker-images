#!/bin/bash
cd /app
while true
do
        ./zetd -conf=/app/.zet/zet.conf -datadir=/app/.zet
        echo zetd terminated, restarting in 10s
        sleep 10
done

