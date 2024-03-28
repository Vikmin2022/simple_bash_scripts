#!/bin/bash

output_file="system_health_check.txt"
echo  "System Health Check:" > "$output_file"
echo "------------" >> "$output_file"
echo "Uptime: $uptime" >> "$output_file"
echo "Load  avarega: $(cat /proc/loadavg)" >> "$output_file"
echo "Memory usage: $(free -m)" >> "$output_file"
echo "Health  check resouls saved to:  $output_file"
