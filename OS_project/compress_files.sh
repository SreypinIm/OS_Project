#!/bin/bash
# Function to compress files or directories
compress_files() {
  local source="$1"

  if [[ -z "$source" ]]; then
    read -p "Enter the path of the file or directory to compress: " source
  fi

  if [[ -e "$source" ]]; then
    if [[ -d "$source" ]]; then
      log_action "Compressing directory $source"
      tar -czvf "$(basename "$source").tar.gz" "$source"
      echo "Directory compressed to $(basename "$source").tar.gz"
    else
      log_action "Compressing file $source"
      gzip "$source"
      echo "File compressed to $source.gz"
    fi
  else
    echo "Source path not found: $source"
    log_action "Source path not found: $source"
  fi
}
