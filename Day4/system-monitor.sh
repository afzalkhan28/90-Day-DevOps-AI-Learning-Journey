#!/bin/bash

# System Monitoring Script

echo "================================"
echo "       SYSTEM MONITOR"
echo "================================"

show_system_info() {
    echo ""
    echo "Current User: $(whoami)"
    echo "Date: $(date)"
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime)"
}

check_disk_usage() {
    echo ""
    echo "Checking Disk Usage..."

    disk_usage=$(df -h / | awk 'NR==2 {print $5}')
    disk_percent=${disk_usage%\%}

    echo "Root Disk Usage: $disk_usage"

    if [ "$disk_percent" -ge 80 ]; then
        echo "WARNING: Disk usage is high!"
    else
        echo "Disk usage is normal."
    fi
}

show_system_info
check_disk_usage

echo ""
echo "================================"
echo "Monitoring completed."
echo "================================"

exit 0
