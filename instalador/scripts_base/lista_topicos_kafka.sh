#!/bin/bash
echo -e ""
echo -e ""
sudo $1/bin/kafka-topics.sh --list --bootstrap-server localhost:9092
