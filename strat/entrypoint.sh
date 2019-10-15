#!/bin/bash
cd /app
while true
do
        cd /StratisBitcoinFullNode/src/Stratis.StratisD
	dotnet run -conf=/app/.strat/strat.conf -datadir=/app/.strat
        echo stratisd terminated, restarting in 10s
        sleep 10
done

