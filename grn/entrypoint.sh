#!/bin/bash
cd /app
while true
do
        ./granited -datadir=/app/.granite -conf=/app/.granite/granite.conf
        echo Infxd terminated, restarting in 10s
        sleep 10
done

