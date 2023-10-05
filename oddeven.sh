#!/bin/bash
# This is a shell script to calculate odd and even numbers up to a specified limit and provide details.

# Prompt the user to enter the limit for odd and even numbers.
read -p "Enter the limit: " limit

# Display the odd and even numbers and details
echo "Odd and even numbers up to $limit:"

# Loop to calculate and display odd and even numbers
for ((num=1; num<=limit; num++)); do
    if [ $((num % 2)) -eq 0 ]; then
        echo "Even: $num"
    else
        echo "Odd: $num"
    fi
done
