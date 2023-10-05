#!/bin/bash
# This is a shell script to calculate prime numbers up to a specified limit and provide details.

# Prompt the user to enter the limit up to which prime numbers should be calculated.
read -p "Enter the limit: " limit

# Display the entered limit
echo "Prime numbers up to $limit:"

# Loop through numbers from 2 up to the specified limit
for ((num=2; num<=limit; num++)); do
    is_prime=true

    # Check if the current number is less than 2
    if [ $num -le 1 ]; then
        is_prime=false
    else
        # Loop to check for factors
        for ((i=2; i*i<=num; i++)); do
            if [ $((num % i)) -eq 0 ]; then
                is_prime=false
                break
            fi
        done
    fi

    # Display the result
    if $is_prime; then
        echo "Prime: $num"
    fi
done
