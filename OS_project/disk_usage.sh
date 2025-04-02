#!/bin/bash
# Function to display disk usage
disk_usage() {
  local directory="$1"

  if [[ -z "$directory" ]]; then
    read -p "Enter the directory path: " directory
  fi

  if [[ -d "$directory" ]]; then
    log_action "Displaying disk usage of $directory"
    du -sh "$directory"
  else
    echo "Directory not found: $directory"
    log_action "Directory not found: $directory"
  fi
}
