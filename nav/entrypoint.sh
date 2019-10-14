#!/bin/bash
cd /app
while true
do
        ./navd -conf=/app/.nav/nav.conf -datadir=/app/.nav
        echo navd terminated, restarting in 10s
        sleep 10
done

