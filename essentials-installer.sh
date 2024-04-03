#!/bin/bash

# This script I am making so whenever I make a fresh linux install, I can install the latest packages.

# In Bash, you can display colors in the output using ANSI escape codes.
# Defining colors here
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
WHITE="\e[37m"
RESET="\e[0m"


if [ $UID -ne 0 ]; then
    echo "RUN AS A ROOT USER MY BOY"
    exit 1
fi

# this is the array of packages that are going to be installed
PACKAGES=( "vlc" "steam" )

# Got to test this first, on how can I make it so that it works just fine. Also add some messages here too
# apt-get update && apt-get upgrade


for i in ${PACKAGES[*]}
do
    # -e is an option which enables interpretation of backlash escapes 
   echo -e "[+] ${YELLOW} Installing ${BLUE} ${i}${RESET}"
   apt-get install "$i" -y
   echo -e "[+] ${GREEN} Successfully installed ${BLUE} ${i}${RESET}"

done