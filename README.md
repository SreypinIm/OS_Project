# File and Directory Management Program

## Overview
This Bash program provides various file and directory management features, including listing files, creating backups, counting files, displaying disk usage, searching for files, and compressing files. All actions are logged in `script.log`.

## Features
- **List Files and Sub-directories**: Display detailed information of all files and sub-directories in a given directory or file.
- **Create Backups**: Backup individual files or entire directories.
- **Count Files**: Count the number of files in a specified directory.
- **Display Disk Usage**: Show disk usage statistics for a given directory.
- **Search Files**: Locate files by name or extension within a specified directory.
- **Compress Files or Directories**: Compress selected files or directories.
- **Logging**: Record all user actions in `script.log`.

## File Structure
```
repository_directory/
├── main.sh          # Main script providing menu and calling respective functions
├── list_files.sh    # Function to list files and sub-directories
├── backup.sh        # Function to create backups
├── count_files.sh   # Function to count the number of files
├── disk_usage.sh    # Function to display disk usage
├── search_files.sh  # Function to search for files
├── compress.sh      # Function to compress files or directories
├── log.sh           # Function to handle logging
```

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/SreypinIm/OS_Project.git
   ```
2. Navigate to the directory:
   ```bash
   cd https://github.com/SreypinIm/OS_Project.git
   ```

## Usage
1. Make sure the script files are executable:
   ```bash
   chmod +x *.sh
   ```
2. Run the main script:
   ```bash
   ./main.sh
   ```

