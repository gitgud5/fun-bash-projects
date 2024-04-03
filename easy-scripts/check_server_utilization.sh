#!/bin/bash

# Color codes for terminal output.
RED="\e[1;31m"
GREEN="\e[1;32m"
EXIT="\e[0m"

# Function to print a divider line.
divider () {
    echo -e "${RED}===========================================${EXIT}"
}

clear

# Displaying the title of the script.
echo -e "${GREEN}******************************${EXIT}"
echo -e "${GREEN}***** SERVER UTILIZATION *****${EXIT}"
echo -e "${GREEN}******************************${EXIT}"
divider
echo 

# Displaying the current date.
echo -e "Today's date is: $(date)"
echo
divider
echo 

# Displaying system uptime.
echo "Uptime: $(uptime)"
echo 
divider
echo 

# Displaying currently logged-on users.
echo "Currently logged-on users:"
w
echo
divider
echo 

# Displaying last logins.
echo "Last logins:"
last -a | head -n 3
echo 
divider
echo 

# Displaying disk and memory usage.
echo "Disk and Memory usage:"
echo

# Displaying disk usage.
df -h | awk 'NR==1{print "Filesystem     Free/Total"} NR>1{print $1 "     " $4 "/" $2}'

# Displaying memory usage.
echo
free -m | awk 'NR==1{print "Memory     Free/Total"} NR==2{print "            " $4 "MB /" $2 "MB"}'
echo
divider
echo 

# Displaying system utilization and most expensive processes.
echo "Utilization and most expensive processes:"
echo

# Displaying system utilization.
top -b -n 1 | head -n 3

# Displaying most expensive processes.
echo 
top -b -n 1 | head -n 10 | tail -n 4
echo
divider
