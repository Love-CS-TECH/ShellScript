#!/bin/bash

# Function to print the right half pyramid pattern
print_pyramid() {
    local rows=$1

    for ((i = 1; i <= rows; i++)); do
        for ((j = 1; j <= i; j++)); do
            echo -n "$j "
        done
        echo  # Move to the next line after printing the row
    done
}

# Set the number of rows for the pyramid
rows=5  # You can change the number of rows as needed

# Call the function to print the pyramid pattern
print_pyramid "$rows"

