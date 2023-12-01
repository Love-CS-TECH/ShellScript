#!/bin/bash

# Function to calculate HCF (GCD) of two numbers
function hcf {
    if [ $2 -eq 0 ]; then
        echo $1
    else
        hcf $2 $(( $1 % $2 ))
    fi
}

# Function to calculate LCM of two numbers
function lcm {
    echo $(( $1 * $2 / $(hcf $1 $2) ))
}

# Function to calculate LCM of three numbers
function lcm3 {
    lcm1=$(lcm $1 $2)
    echo $(lcm $lcm1 $3)
}

# Input three numbers from the user
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3

# Calculate and display LCM and HCF
result_lcm=$(lcm3 $num1 $num2 $num3)
result_hcf=$(hcf $num1 $(hcf $num2 $num3))

echo "LCM of $num1, $num2, and $num3 is: $result_lcm"
echo "HCF of $num1, $num2, and $num3 is: $result_hcf"

