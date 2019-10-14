#!/bin/bash
cd /app
while true
do
        ./grsd -conf=/app/.grs/grs.conf -datadir=/app/.grs
        echo grsd terminated, restarting in 10s
        sleep 10
done

