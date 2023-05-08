#!/bin/bash
chown xrootd:xrootd /logs
runuser -u xrootd -- xrootd -c /xrdconfigs/xrootd-standalone.cfg -l /logs/server.log

