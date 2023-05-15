#!/bin/bash

##### building #####
cd /build

git config --global --add safe.directory /xrootd/
git config --global --add safe.directory /xrootd/src/XrdCeph

cmake -DCMAKE_INSTALL_PREFIX=. ../xrootd
make clean

make -j 8

##### add user xrootd #####
echo "xrootd:x:9997:9997::/home/xrootd:/bin/bash" >> /etc/passwd

##### start server #####
runuser -u xrootd -- /build/src/xrootd -c /xrdconfigs/xrootd-caching-server.cfg -l /logs/proxy.log
