#!/bin/bash

PINGHOST=google.com
INFLUXDB=INFLUXDB

PING=`ping -c 4 $PINGHOST | tail -1| awk -F '/' '{print $5}'`
curl -i -XPOST 'http://'$INFLUXDB':8086/write?db=mydb' --data-binary 'ping,host='$HOST2PING' value='$PING 
echo 'Roundtrip to '$PINGHOST':'$PING