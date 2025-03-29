#!/bin/bash
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
    1) bash list_details.sh ;;
    2) bash create_backup.sh ;;
    3) bash count_files.sh ;;
    4) bash disk_usage.sh ;;
    5) bash search_file.sh ;;
    6) bash compress_files.sh ;;
    7) echo "Exiting..."; exit 0 ;;
    *) echo "Invalid choice. Please enter a number between 1 and 7." ;;
  esac
  echo ""
done