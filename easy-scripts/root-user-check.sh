#!/bin/bash


# In this script we will understand how to make sure that the root user is running the script
# Typically we can find about the user through the command 
# whoami
# and we can get user id through the environment variable
# $UID
# NOW, ROOT USER WILL ALWAYS HAVE $UID OF 0, so we check that

if [ $UID -ne 0 ];then
	echo "THIS is not a root user"
else
	echo "This is a root user"
fi
