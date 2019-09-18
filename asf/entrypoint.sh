#!/bin/bash
cd /app
while true
do
        ./asfd -conf=/app/.asf/asf.conf -datadir=/app/.asf
        echo asfd terminated, restarting in 10s
        sleep 10
done

