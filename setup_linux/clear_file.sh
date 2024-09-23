#!/bin/bash
Green='\033[0;32m'        # Green

# Path to the file you want to clear
file_path="$1"

# Check if the file exists
if [ -f "$file_path" ]; then
    # Clear the file contents
    : > "$file_path"
    echo "$Green Cleared contents of $file_path"
else
    echo "$Green File $file_path does not exist"
fi