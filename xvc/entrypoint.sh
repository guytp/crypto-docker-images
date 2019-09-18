#!/bin/bash
cd /app
while true
do
        ./xvcd
        echo xvcd terminated, restarting in 10s
        sleep 10
done

