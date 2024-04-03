#!/bin/bash


# Time to make a digital clock
# Date command can give out date and time in a specific format too if needed, this can be found in the help page of date
# date --help


while true
do
	date +%H:%M:%S
	sleep 1
	clear
done
