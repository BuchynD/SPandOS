#!/bin/bash

# Define the target directory
DIRECTORY="/etc"

# Find and count files excluding directories and links
file_count=$(find "$DIRECTORY" -type f | wc -l)

# Output the result
echo "Number of regular files in $DIRECTORY: $file_count"
