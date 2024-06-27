#!/bin/bash

SOURCE_DIR="./gopal"
BACKUP_DIR="./archive"
BACKUP_INTERVAL=60

cleanup() {
  echo "Caught Signal. Cleaning up and exiting..."
  rm -f /tmp/temp_backup.tar.gz  # Example cleanup task
  exit 1
}

trap cleanup SIGINT

perform_backup() {
  local timestamp=$(date +"%Y%m%d%H%M%S")
  local backup_file="$BACKUP_DIR/backup_$timestamp.tar.gz"
  echo "Performing Backup: $backup_file"
  tar -czf "$backup_file" -C "$SOURCE_DIR" .
}

mkdir -p "$BACKUP_DIR"

echo "Starting periodic backups from $SOURCE_DIR to $BACKUP_DIR every $BACKUP_INTERVAL seconds."
echo "Press Ctrl+C to stop."

while true; do
  perform_backup
  sleep "$BACKUP_INTERVAL"
done
