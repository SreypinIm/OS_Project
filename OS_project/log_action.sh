#!/bin/sh
LOG_FILE="script.log"
log_action() {
  message="$1"
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" >> "$LOG_FILE"
}

