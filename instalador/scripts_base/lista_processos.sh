#!/bin/bash

sudo ps -ef | grep -v grep | grep kafka | awk '{print "processos:" $2}'
