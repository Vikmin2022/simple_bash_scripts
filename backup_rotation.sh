#!/bin/bash

backup_dir="/root/test"
max_backup=1
#grep '^-' will grep all in a list starts with -
# {print $NF}: Specifies an action to print the value of the last field ($NF) of each input line

while [ "$(ls -l "$backup_dir" | grep '^-' | wc -l)" -gt "$max_backup" ]; do
    oldest_backup=$(ls -lt "$backup_dir" | grep '^-' | tail -n1 | awk '{print $NF}')
    rm "$backup_dir/$oldest_backup"
    if [ $? -eq 0 ]; then
        echo "Oldest backup file '$oldest_backup' removed."
    else
        echo "Error removing oldest backup file."
        exit 1
    fi
    done