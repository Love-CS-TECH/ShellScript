#!/bin/bash

# Function to calculate factorial and display in the specified format
calculate_factorial() {
    local num=$1
    local result=1
    local expression=""

    for ((i = num; i >= 1; i--)); do
        result=$((result * i))
        if [ $i -eq 1 ]; then
            expression+="1"
        else
            expression+="$i*"
        fi
    done

    echo "Factorial of $num is: $expression=$result"
}

# Get input from the user
echo "Enter a number to calculate factorial:"
read input_num

# Call the calculate_factorial function with the user-input number
calculate_factorial "$input_num"

