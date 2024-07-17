#!/bin/bash

# Prompt the user to enter a login name
read -p "Enter login name: " login

# Check if the login name matches the pattern of first letter uppercase and rest lowercase
if [[ "$login" =~ ^[A-Z][a-z]*$ ]]; then
    echo "Login name '$login' is valid."
else
    echo "Entered login name '$login' is invalid. Please enter a login name starting with an uppercase letter followed by lowercase letters."
fi
