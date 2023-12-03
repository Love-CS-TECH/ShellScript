#!/bin/bash

# Function to check if a string is palindrome
is_palindrome() {
    local input=$1
    local reversed=""

    # Reverse the string
    for ((i = ${#input} - 1; i >= 0; i--)); do
        reversed="${reversed}${input:$i:1}"
    done

    # Check if the reversed string is equal to the original
    [ "$input" == "$reversed" ]
}

# Get input from the user
echo "Enter a string:"
read user_input

# Convert input to lowercase for case-insensitive comparison
user_input_lower=$(echo "$user_input" | tr '[:upper:]' '[:lower:]')

# Call the is_palindrome function with the user-input string
if is_palindrome "$user_input_lower"; then
    echo "The string is a palindrome."
else
    echo "The string is not a palindrome."
fi
