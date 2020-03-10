#!/bin/bash
cd /app
while true
do
        ./doged -conf=/app/.doge/doge.conf -datadir=/app/.doge
        echo doged terminated, restarting in 10s
        sleep 10
done

