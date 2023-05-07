#!/bin/bash

# Get the date and time
DATE=$(date +"%Y-%m-%d %H:%M:%S")

# Get the amount of used memory
USED_MEMORY=$(free -h --mega | awk '/^Mem/ {printf "%.2f%%", $3*100/$2 }')

# Get the total amount of memory
TOTAL_MEMORY=$(free -h --mega | awk '/^Mem/ {printf $2}')

# Write the data to the log file
echo "${DATE} | Used Memory: ${USED_MEMORY} | Total Memory: ${TOTAL_MEMORY}" >> info.log

