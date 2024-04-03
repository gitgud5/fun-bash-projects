#!/bin/bash

# This script is designed to display file details in a readable manner using the awk command for text processing.

# Check if the script is provided with the correct number of arguments.
if [ $# -eq 0 ]; then
    echo "Usage: $0 [File1]"
    exit 1
fi

# Extracting file details using awk command
OWNER=$(ls -la $1 | awk '{print $3}')
SIZE=$(ls -la $1 | awk '{print $5}')
MONTH=$(ls -la $1 | awk '{print $6 " " $7}')
TIME=$(ls -la $1 | awk '{print $8}')

# Displaying file details
echo "File name: $1"
echo "Owner: $OWNER"
echo "Size: $SIZE bytes"
echo "Creation time: $MONTH, $TIME"
echo "File type: $(file $1)"
echo

# Displaying file permissions
echo "Permissions"

if [ -r $1 ]; then
    echo "Readable = TRUE"
else
    echo "Readable = FALSE"
fi

if [ -w $1 ]; then
    echo "Writeable = TRUE"
else
    echo "Writeable = FALSE"
fi

if [ -x $1 ]; then
    echo "Executable = TRUE"
else
    echo "Executable = FALSE"
fi

