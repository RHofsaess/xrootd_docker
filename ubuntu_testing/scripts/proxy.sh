#!/bin/bash

# let xrootd own the cache
chown xrootd:xrootd /cache

runuser -u xrootd -- xrootd -c /xrdconfigs/xrootd-caching-server.cfg
