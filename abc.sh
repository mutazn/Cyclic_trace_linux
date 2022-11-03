#!/bin/bash
 
while true; do
sleep 1
date>> "$NODE_NAME ".txt 2>&1;nc -zv -w 1 10.177.103.37 6432>> "$NODE_NAME ".txt 2>&1
done
