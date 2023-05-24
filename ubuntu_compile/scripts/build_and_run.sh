#!/bin/bash

eval `git config --global --add safe.directory /xrootd`
eval `git config --global --add safe.directory /xrootd/src/XrdCeph`

git config --global --list
##### building #####
cd /build


cmake -DCMAKE_INSTALL_PREFIX=. ../xrootd
#make clean


make -j 8

##### add user xrootd #####
echo "xrootd:x:9997:9997::/home/xrootd:/bin/bash" >> /etc/passwd

# create log file
touch /logs/proxy.log
echo "START: $(date) ----------------------------" > /logs/proxy.log

# set permissions
chown -R xrootd /logs
chown -R xrootd /cache


##### start server #####
runuser -u xrootd -- /build/src/xrootd -c /xrdconfigs/xrootd-caching-server.cfg -l /logs/proxy.log
