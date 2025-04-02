File and Directory Management Program
Overview
This bash program provides various file and directory management features including listing files, creating backups, counting files, displaying disk usage, searching for files, and compressing files. All actions are logged in script.log.

Features
List Files and Sub-directories: List all files and sub-directories with detailed information of a given directory or file.
Create Backups: Create backups of individual files and entire directories.
Count Files: Count the number of files in a given directory.
Display Disk Usage: Display disk usage of a given directory.
Search Files: Search for a file by name or extension in a given directory.
Compress Files or Directories: Compress the given files or directories.
Logging: Keep a log file of all actions performed by users in a file called script.log.
File Structure
main.sh: The main script that provides the menu and calls the respective functions.
list_files.sh: Contains the function to list files and sub-directories.
backup.sh: Contains the function to create backups.
count_files.sh: Contains the function to count the number of files.
disk_usage.sh: Contains the function to display disk usage.
search_files.sh: Contains the function to search for files.
compress.sh: Contains the function to compress files or directories.
log.sh: Contains the logging function.
Installation
Clone the repository:
git clone <repository_url>
Navigate to directory
cd <repository_directory>
Usage
Make sure the script files are executable:
chmod +x *.sh
Run the main script:
./main.sh
