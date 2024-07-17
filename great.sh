#!/bin/bash

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3

if [ "$num1" -gt "$num2" ] && [ "$num1" -gt "$num3" ]; then
    greatest=$num1
elif [ "$num2" -gt "$num1" ] && [ "$num2" -gt "$num3" ]; then
    greatest=$num2
else
    greatest=$num3
fi

echo "The greatest number among $num1, $num2, and $num3 is: $greatest"
