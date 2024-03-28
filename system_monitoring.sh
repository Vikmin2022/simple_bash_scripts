#!/bin/bash

threshold=0
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)
echo "$cpu_usage"

if [[ -n "$cpu_usage" && "$cpu_usage" =~ ^[0-9]+$ && "$cpu_usage" -gt "$threshold" ]]
then
    echo "CPU usage critical"
else    
    echo "normal cpu"
fi    