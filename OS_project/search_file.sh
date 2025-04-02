#!/bin/sh
. ./log_action.sh
search_file() {
  directory="$1"
  search_term="$2"
  if [ -z "$directory" ]; then
    echo "Enter the directory path to search: "
    read directory
  fi
  if [ -z "$search_term" ]; then
    echo "Enter the file name or extension to search: "
    read search_term
  fi
  if [ -d "$directory" ]; then
    log_action "Searching for $search_term in $directory"
    find "$directory" -name "*$search_term*"
  else
    echo "Directory not found: $directory"
    log_action "Directory not found: $directory"
  fi
}
