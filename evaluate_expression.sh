#!/bin/bash

# Prompt the user for input
read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c
read -p "Enter the value of d: " d
read -p "Enter the value of e: " e
read -p "Enter the value of f: " f

# Perform the arithmetic calculation
result=$(( (a + b) + (c - d) * e % f ))

# Display the result
echo "Result of the expression [(a+b)+(c-d)*e%f] is: $result"
