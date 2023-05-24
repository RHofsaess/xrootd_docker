#!/bin/bash

# add user
echo "xrootd:x:9997:9997::/home/xrootd:/bin/bash" >> /etc/passwd

# create log file
touch /logs/proxy.log
echo "START: $(date) ----------------------------" > /logs/proxy.log

# set permissions
chown -R xrootd /logs
chown -R xrootd /cache

# run proxy service
runuser -u xrootd -- /build/src/xrootd -c /xrdconfigs/xrootd-caching-server.cfg -l /logs/proxy.log
