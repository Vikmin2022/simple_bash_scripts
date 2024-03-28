#!/bin/bash

file="/root/test/new.txt"
openssl enc -aes-256-cbc -salt -in "$file" -out "$file.enc"
echo "File encrypted: $file.enc"