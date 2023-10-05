#!/bin/bash
# This is a shell script to calculate Fibonacci numbers up to a specified limit and provide details.

# Prompt the user to enter the limit for Fibonacci numbers.
read -p "Enter the limit: " limit

# Initialize variables for the first two Fibonacci numbers
a=0
b=1

# Display the Fibonacci sequence and details
echo "Fibonacci sequence up to the $limit terms:"

# Loop to calculate and display Fibonacci numbers
for ((i=1; i<=limit; i++)); do
    echo "Term $i: $a"

    # Calculate the next Fibonacci number
    next=$((a + b))

    # Update the values of a and b for the next iteration
    a=$b
    b=$next
done
