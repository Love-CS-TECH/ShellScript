#!/bin/bash

# Function to display the multiplication table
display_multiplication_table() {
    local num=$1

    echo "Multiplication Table for $num:"
    for ((i = 1; i <= 10; i++)); do
        result=$((num * i))
        echo "$num x $i = $result"
    done
}

# Get the number from the user
echo "Enter a number to display its multiplication table:"
read input_num

# Call the function to display the multiplication table
display_multiplication_table "$input_num"
