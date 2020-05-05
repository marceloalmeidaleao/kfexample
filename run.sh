#!/bin/bash
while :; do
sleep 300
done

cd /kafka/bin
nohup ./zookeeper-server-start.sh ../config/zookeeper.properties > dev/null 2>&1

while :; do
sleep 600
done

nohup ./kafka-server-start.sh ../config/server.properties > dev/null 2>&1
echo -e "started"



