search_file() {
  local directory="$1"
  local search_term="$2"

  if [[ -z "$directory" ]]; then
    read -p "Enter the directory path to search: " directory
  fi

  if [[ -z "$search_term" ]]; then
    read -p "Enter the file name or extension to search: " search_term
  fi

  if [[ -d "$directory" ]]; then
    log_action "Searching for $search_term in $directory"
    find "$directory" -name "*$search_term*"
  else
    echo "Directory not found: $directory"
    log_action "Directory not found: $directory"
  fi
}
