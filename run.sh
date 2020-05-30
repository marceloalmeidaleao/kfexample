#!/bin/bash
while :; do
sleep 300
done
cd /kafka/
chmod -R 775 *

cd /kafka/bin
nohup ./zookeeper-server-start.sh ../config/zookeeper.properties &

while :; do
sleep 600
done

./kafka-server-start.sh ../config/server.properties &
echo -e "started"



