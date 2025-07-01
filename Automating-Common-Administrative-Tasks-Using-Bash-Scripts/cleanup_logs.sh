#!/bin/bash

LOG_DIR="/var/log"
DAYS=7

echo "Cleaning up log files older than $DAYS days in $LOG_DIR..."
find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;
echo "Log cleanup completed."
