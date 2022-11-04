#!/bin/bash
 
while true; do
sleep 1
date >> /tmp/tcpdump/"$NODE_NAME ".txt 2>&1;nc -zv -w 1 8.8.8.8 443 >> /tmp/tcpdump/"$NODE_NAME ".txt 2>&1
done
