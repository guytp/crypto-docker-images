#!/bin/bash
cd /app
while true
do
        ./infxd -datadir=/app/.infx -conf=/app/.infx/infx.conf
        echo Infxd terminated, restarting in 10s
        sleep 10
done

