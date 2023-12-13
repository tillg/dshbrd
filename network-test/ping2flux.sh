#!/bin/bash

HOST2PING=google.com
PING=`ping -c 4 $HOST2PING | tail -1| awk -F '/' '{print $5}'`
curl -i -XPOST 'http://localhost:8086/write?db=mydb' --data-binary 'ping,host='$HOST2PING' value='$PING 
echo 'Roundtrip to '$HOST2PING':'$PING