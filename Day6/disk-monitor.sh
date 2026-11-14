#!/bin/bash

# Disk Usage Monitoring Script

THRESHOLD=80

echo "================================="
echo "       DISK USAGE MONITOR"
echo "================================="

echo ""
echo "Current User: $(whoami)"
echo "Date: $(date)"

echo ""
echo "Disk Usage Details:"
df -h

# Get root filesystem usage percentage
DISK_USAGE=$(df -P / | awk 'NR==2 {print $5}' | tr -d '%')

echo ""
echo "Root Disk Usage: ${DISK_USAGE}%"

if [ "$DISK_USAGE" -ge "$THRESHOLD" ]; then
    echo "WARNING: Disk usage is above threshold!"
else
    echo "STATUS: Disk usage is normal."
fi

echo ""
echo "Monitoring completed."
