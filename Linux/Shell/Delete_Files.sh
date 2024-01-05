#!/bin/bash

# Set the path to the target folder
target_folder="/path/to/your/target/folder"

# Set the path to the log file in the Documents folder
log_file="$HOME/Documents/deletion_log.txt"

# Check if the log file exists, if not, create a new one
if [ ! -f "$log_file" ]; then
    touch "$log_file"
fi

# Change to the target folder
cd "$target_folder" || exit

# Find and delete files older than 3 days
find . -type f -mtime +3 -exec rm -rf {} \; -exec echo "Deleted: {}" >> "$log_file" \;

echo "Deletion process completed. Check $log_file for details."

