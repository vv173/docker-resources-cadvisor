#!/bin/bash

# Get the date and time
DATE=$(date +"%Y-%m-%d %H:%M:%S")

# Get the amount of free memory
MEMORY=$(free -m | awk 'NR==2{printf "%.2f%%\t\t", $3*100/$2 }')

# Write the data to the log file
echo "${DATE} | Free Memory: ${MEMORY}" >> info.log

