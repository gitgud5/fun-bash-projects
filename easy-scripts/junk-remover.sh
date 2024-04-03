#!/bin/bash



# Here we will update, upgrade and after doing all that we will remove the unnecessary files from the system
# This script I can use with a cron job to run on every bootup etc etc

if [ $UID -eq 0 ];then
apt-get update -y
apt-get upgrade -y
apt-get remove -y
else
	echo "Please use sudo/run the file as root user"
fi
