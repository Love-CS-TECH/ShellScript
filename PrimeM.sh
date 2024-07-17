#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1

    # 0 and 1 are not prime numbers
    if [ $num -le 1 ]; then
        echo "false"
        return
    fi

    # Check for factors from 2 to sqrt(num)
    for (( i=2; i*i<=num; i++ )); do
        if [ $(( num % i )) -eq 0 ]; then
            echo "false"
            return
        fi
    done

    echo "true"
}

# Prompt the user to enter a number
read -p "Enter a number: " number

# Check if the number is prime
if [ "$(is_prime $number)" == "true" ]; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi
