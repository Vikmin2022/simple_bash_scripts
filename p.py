#!/root/bin/python

import psutil

# Threshold for high CPU usage (in percent)
threshold = 80

# Get CPU usage
cpu_usage = psutil.cpu_percent(interval=1)

# Check if CPU usage is above threshold
if cpu_usage > threshold:
    print(f"High CPU usage detected: {cpu_usage}%")
else:
    print("CPU normal usage")