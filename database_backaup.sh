#!/bin/bash

database_name="your_database_name"
output_file="database_backup_$(data+%Y%m%d).sql"
myscldump -u username -p password # myscldump is used for creating backups of MySQL databases
"$database_name" > "output_file"
echo "Database backup created: $output_file"