#!/bin/bash

log_file="/var/log/httpd/access_log"
awk '{print $1 $4}' "log_file" | sort | uniq -c | sort -nr #uniq -c: uniq is used to filter out repeated lines in a sorted stream of data. The -c option tells uniq to prefix lines by the number of occurrences.
#sort -nr:
#sort: As before, this command sorts lines of text files.
#-n: Specifies a numerical sort.
#-r: Reverses the result of comparisons.

echo "Web server log analyzed"
