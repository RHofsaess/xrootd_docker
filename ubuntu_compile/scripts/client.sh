#!/bin/bash
# This script sets up logging and starts a data transfer

touch /logs/client.log

# wait for startup of other containers
sleep 10

# transfer a file
XRD_CPUSEPGWRTRD=0 xrdcp -d 2 -f root://10.5.0.5:1094//storage/file1.parquet . &> /logs/client.log
