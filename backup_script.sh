#!/bin/bash

# Define source and destination directories
SOURCE_DIR="/home/vagrant/backup_project/source"
DEST_DIR="/home/vagrant/backup_project/destination"

# Create a timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Perform the backup using rsync
rsync -av --delete "$SOURCE_DIR/" "$DEST_DIR/backup_$TIMESTAMP/"

# Print a success message
echo "Backup completed successfully at $TIMESTAMP"