#!/bin/bash

file_to_compress="/root/test/new.txt"
gzip "$file_to_compress"
echo "File compressed: $file_to_compressed.gz "