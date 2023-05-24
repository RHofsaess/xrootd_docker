#!/bin/bash

# create log file
touch /logs/server.log
echo "START: $(date) ----------------------------" > /logs/server.log

#set permissions
chown -R xrootd:xrootd logs

# start xrootd server
runuser -u xrootd -- xrootd -c /xrdconfigs/xrootd-standalone.cfg -l /logs/server.log

sleep infinity
