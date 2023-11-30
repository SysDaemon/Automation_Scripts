#!/bin/bash

# Check if the user provided a folder path
if [ -z "$1" ]; then
    echo "Usage: $0 <folder_path>"
    exit 1
fi

folder_path="$1"

# Check if the folder exists
if [ ! -d "$folder_path" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

# Delete all files inside the folder
find "$folder_path" -type f -delete

# echo "INFO: All files in $folder_path, was successfully deleted."

# Execute the comments below to execute everyday @21h

#crontab -e
# 0 21 * * * /path/to/your/delete_files.sh /path/to/your/folder
