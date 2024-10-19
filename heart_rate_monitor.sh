#!/bin/bash

#Enter device name
read -p "Enter the device name (e.g., Monitor_A, Monitor_B): " device_name

log_file="heart_rate_log.txt"

#logging heart rate data every second
{
    while true; do

        timestamp=$(date '+%Y-%m-%d %H:%M:%S')

        heart_rate=$((RANDOM % 51 + 50))

        echo "$timestamp $device_name $heart_rate" >> $log_file

        sleep 1
    done
} &
# Display the process ID (PID)
echo "Heart rate monitoring started in the background. PID: $!"
