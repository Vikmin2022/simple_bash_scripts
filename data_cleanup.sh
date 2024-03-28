#!/bin/bash


derectory="/root/cleanup"

find "$directory" -type f -mtime +7 -exec rm {}\;
echo "Old files  remove"