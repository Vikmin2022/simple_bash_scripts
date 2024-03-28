#!/bin/bash

scheduled_task="/root/script/task_scheduler.sh"
schedule_time="* * * * *"
echo "$schedule_time $scheduled_task" | crontab -
echo "Task scheduled successfully"