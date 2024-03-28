#!bin/bash

logfile="/var/log/httpd/error_log"

grep "ERROR" "$logfile" > error_log.txt
echo "Error log created"