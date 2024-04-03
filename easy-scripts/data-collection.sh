#!/bin/bash

# This script is used to collect data and then save data into the .csv file

# Prompt the user to enter their name
read -p "[+]Enter your name: " name

# Prompt the user to enter their ID number
read -p "[+]Enter your ID number: " ID

# Prompt the user to enter their gender
read -p "[+]Enter your gender: " GENDER

# Concatenate the entered information into a single string
INFO="$name,$ID,$GENDER"

# Prompt the user to confirm if enough information has been provided
while true; do
    read -p "Have you given enough information? [y/n] " INPUT

    # Use a case statement to handle the user's input
    case "$INPUT" in 
        [nN]) # If the user inputs 'n' or 'N', exit the script
            echo "Data collection aborted."
            exit ;;
        [yY]) # If the user inputs 'y' or 'Y', store the information in data.csv
            echo "Data successfully stored."
            echo "$INFO" >> data.csv
            exit ;;
        *) # If the user inputs anything else, prompt them to fix it
            echo "Invalid input. Please enter 'y' or 'n'."
            ;;
    esac
done

