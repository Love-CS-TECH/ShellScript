#!/bin/bash

word="MIDNAPUR"

# Function to print right half pyramid pattern
print_pyramid() {
    local current_word="$1"
    local length=${#current_word}

    for ((i = 0; i < length; i++)); do
        for ((j = 0; j <= i; j++)); do
            echo -n "${current_word:j:1} "
            sleep 0.1  # Adjust the sleep duration as needed
        done
        echo  # Move to the next line after printing the word
    done
}

# Call the function to print the pyramid pattern
print_pyramid "$word"
