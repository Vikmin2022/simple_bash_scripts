#!/bin/bash

database_name="your_db"
days_to_keep=7
find /path/to/your_db/backups -name "${database_name}*.sql" -mtime +"$days_to_keep" -exec rm {} \;