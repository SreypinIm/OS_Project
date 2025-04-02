#!/bin/bash
. ./list_details.sh
. ./create_backup.sh
. ./count_files.sh
. ./disk_usage.sh
. ./search_file.sh
. ./compress_files.sh

while true; do
  echo ""
  echo "************************************"
  echo "*          MENU OPTIONS            *"
  echo "************************************"
  echo "*  1. List details                 *"
  echo "*  2. Create backup                *"
  echo "*  3. Count files                  *"
  echo "*  4. Display disk usage           *"
  echo "*  5. Search file                  *"
  echo "*  6. Compress files/directories   *"
  echo "*  7. Exit                         *"
  echo "************************************"
  echo ""
  read -p "Enter your choice: " choice
  echo ""

  case "$choice" in
    1) list_details ;;
    2) create_backup ;;
    3) count_files ;;
    4) disk_usage ;;
    5) search_file ;;
    6) compress_files ;;
    7) log_action "Exiting program"; exit 0 ;;
    *) echo "Invalid choice." ;;
  esac
  echo ""
done
