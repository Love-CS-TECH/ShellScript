#!/bin/bash
# This is a shell script to calculate Armstrong numbers up to a specified limit and provide details.

# Prompt the user to enter the limit for Armstrong numbers.
read -p "Enter the limit: " limit

# Display the Armstrong numbers and details
echo "Armstrong numbers up to $limit:"

# Loop to calculate and display Armstrong numbers
for ((num=1; num<=limit; num++)); do
    num_of_digits=${#num}
    sum=0
    original_num=$num

    # Calculate the sum of digits raised to the power of the number of digits
    temp=$num
    while [ $temp -gt 0 ]; do
        digit=$((temp % 10))
        sum=$((sum + digit ** num_of_digits))
        temp=$((temp / 10))
    done

    # Check if the number is an Armstrong number
    if [ $sum -eq $original_num ]; then
        echo "Armstrong: $original_num"
    fi
done
