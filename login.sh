#!/bin/bash

# Prompt the user to enter a login name
read -p "Enter login name: " login

# Check if the login name exists in the system
if id "$login" &>/dev/null; then
    echo "Login name '$login' is valid."
else
    echo "Entered login name '$login' is invalid or does not exist."
fi

