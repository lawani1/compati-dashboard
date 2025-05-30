#!/bin/bash

clear
echo "=============================="
echo "      BACKUP UTILITY TOOL     "
echo "=============================="

read -p "Enter directory to back up (e.g. /home): " source
read -p "Enter destination folder (e.g. /backup): " destination

# Create the backup folder if it doesn't exist
mkdir -p "$destination"

# Create a timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_file="$destination/backup_$timestamp.tar.gz"

# Perform the backup
if [ -d "$source" ]; then
    tar -czvf "$backup_file" "$source"
    echo "✅ Backup completed: $backup_file"
else
    echo "❌ Error: Source directory does not exist!"
fi

read -p "Press Enter to return to the menu..."

