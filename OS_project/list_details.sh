list_details() {
  local path="$1"

  if [[ -z "$path" ]]; then
    read -p "Enter the path of the file or directory: " path
  fi

  if [[ -e "$path" ]]; then
    log_action "Listing details of $path"
    ls -l "$path"
  else
    echo "Path not found: $path"
    log_action "Path not found: $path"
  fi
}
