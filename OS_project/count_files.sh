#!/bin/bash
# Function to count files in a directory
count_files() {
  local directory="$1"

  if [[ -z "$directory" ]]; then
    read -p "Enter the directory path: " directory
  fi

  if [[ -d "$directory" ]]; then
    local count=$(find "$directory" -type f | wc -l)
    log_action "Counting files in $directory"
    echo "Number of files in $directory: $count"
  else
    echo "Directory not found: $directory"
    log_action "Directory not found: $directory"
  fi
}
