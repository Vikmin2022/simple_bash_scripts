#!/bin/bash

backup_dir="/root/backup"
source_dir="/root/test"


# Create a tar archive from the source directory and save it to the backup directory
tar -czf "$backup_dir/backup_$(date +%Y%m%d_%H%M%S).tar.gz" -C "$source_dir" .

# Check if the tar command was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "Backup failed."
fi