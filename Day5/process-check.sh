#!/bin/bash

read -p "Enter process name: " process_name

if pgrep -f "$process_name" > /dev/null; then
    echo "Process is running: $process_name"
else
    echo "Process is not running: $process_name"
fi
