#!/bin/bash

# Function to handle cleanup on Ctrl+C
clean_up() {
    echo "Cleaning up and exiting."
    rm -rf temp_file.txt  # Example cleanup task
    exit 1
}

# Trap Ctrl+C signal
trap 'clean_up' SIGINT

# Ensure backup directory exists
mkdir -p backup

# Function to copy a file to backup directory
backup_file() {
    if [ -f "$1" ]; then
        cp "$1" backup/
        echo "File $1 backed up successfully."
    else
        echo "Error: File $1 does not exist."
    fi
}

# Main script starts here
echo "Enter a file name to backup:"
read filename

backup_file "$filename"

# List files and capture exit code
ls
ls_exit_code=$?

# Print exit code of ls command
echo "Exit code of ls command: $ls_exit_code"

# Exit with success status
exit 0
