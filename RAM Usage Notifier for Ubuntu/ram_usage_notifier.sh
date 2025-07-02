#!/bin/bash

# ==== Configurable Variables ====
THRESHOLD=80
EMAIL="raj.pimparkar2001@gmail.com"  # Recipient email address
SUBJECT="RAM Usage Alert on $(hostname)"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# ==== Get RAM Usage ====
USED=$(free | grep Mem | awk '{print $3}')
TOTAL=$(free | grep Mem | awk '{print $2}')
USAGE_PERCENT=$(( USED * 100 / TOTAL ))

# ==== Check RAM and Notify ====
if [ "$USAGE_PERCENT" -gt "$THRESHOLD" ]; then
  echo -e "Warning: RAM usage exceeded threshold\n\nUsage: ${USAGE_PERCENT}%\nTimestamp: ${TIMESTAMP}" | mailx -s "$SUBJECT" "$EMAIL"
fi

