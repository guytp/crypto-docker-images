#!/bin/bash
cd /app
while true
do
        ./aurd -conf=/app/.aur/aur.conf -datadir=/app/.aur
        echo aurd terminated, restarting in 10s
        sleep 10
done

