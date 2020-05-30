#!/bin/bash
while :; do
sleep 300
done
cd /kafka/
chmod -R 775 *

cd /kafka/bin
nohup ./zookeeper-server-start.sh ../config/zookeeper.properties > dev/null 2>&1

while :; do
sleep 600
done

./kafka-server-start.sh ../config/server.properties & dev/null 2>&1
echo -e "started"



