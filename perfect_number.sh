#!/bin/bash

# Function to check if a number is a perfect number
is_perfect() {
    local num=$1
    local sum=0

    for ((i = 1; i <= num / 2; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            sum=$((sum + i))
        fi
    done

    [ $sum -eq $num ]
}

# Display perfect numbers between 1 and 100
echo "Perfect numbers between 1 and 100:"

for ((num = 1; num <= 100; num++)); do
    if is_perfect "$num"; then
        echo "$num"
    fi
done
