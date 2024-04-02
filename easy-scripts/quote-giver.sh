#!/bin/bash

# We will give the user a random quote every time the user runs this script

my_array=()

if [ -f "quotes.txt" ]; then
    # Read the file line by line
    while read -r quote; do
        # Add each quote to the array
        my_array+=("$quote")
    # In the line below we are feeding the file to the while loop which it is reading
    done < "quotes.txt"
    
    # Print a random quote from the array
    # We can find the array lengtth using ${#my_array[@]} OR ${#my_array[*]}
    rand_index=$((RANDOM % ${#my_array[@]}))
    echo "Random Quote: ${my_array[$rand_index]}"
else
    echo "File not found: quotes.txt"
fi
