#!/bin/bash
# NOTE: only works if xrootd is commented in in the Dockerfile!

echo "xrootd:x:9997:9997::/home/xrootd:/bin/bash" >> /etc/passwd

touch /logs/proxy.log
echo "START: $(date) ----------------------------" >> /logs/proxy.log

# set permissions
chown -R xrootd /logs
chown -R xrootd /cache

# start proxy service
runuser -u xrootd -- xrootd -c /xrdconfigs/xrootd-caching-server.cfg -l /logs/proxy.log
