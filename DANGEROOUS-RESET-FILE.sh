#!/bin/bash

# Retrieve the username of the currently logged-in user
USERNAME=$(whoami)

# Provide warnings
echo "CLOSE ALL OPEN PROGRAMS, such as Chrome, editors, etc."
echo "Leave open only one terminal to run the following commands in."
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "WARNING WARNING WARNING WARNING WARNING WARNING WARNING"
echo "- Do NOT accidentally run this on the wrong computer while testing!"
echo "- UNPLUG ANY DRIVES FIRST!"
echo "- And UNMOUNT ANY MOUNTED DISKS IN YOUR HOME DIR FIRST!"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

# Ask for confirmation
read -p "Are you sure you want to delete the entire home folder for user $USERNAME? (yes/no): " CONFIRM

# If user confirms, delete the home folder
if [ "$CONFIRM" = "yes" ]; then
    echo "Deleting home folder for user $USERNAME..."
    sudo rm -rf "/home/$USERNAME"   # WARNING WARNING WARNING
    echo "Home folder for user $USERNAME deleted."
else
    echo "Deletion aborted."
fi
