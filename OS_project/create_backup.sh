
# Function to create backups
create_backup() {
  local source="$1"
  local destination="$2"

  if [[ -z "$source" ]]; then
    read -p "Enter the path of the file or directory to backup: " source
  fi

  if [[ -z "$destination" ]]; then
    read -p "Enter the backup destination directory: " destination
  fi

  if [[ -e "$source" ]]; then
    if [[ -d "$source" ]]; then
      log_action "Backing up directory $source to $destination"
      cp -r "$source" "$destination"
      echo "Directory backup completed."
    else
      log_action "Backing up file $source to $destination"
      cp "$source" "$destination"
      echo "File backup completed."
    fi
  else
    echo "Source path not found: $source"
    log_action "Source path not found: $source"
  fi
}
