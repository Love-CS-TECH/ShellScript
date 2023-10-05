#!/bin/bash
echo "Enter two numbers:"
read num1
read num2
echo "Select operation: 1. Addition 2. Subtraction 3. Multiplication 4. Division"
read choice
case $choice in
  1) result=$((num1 + num2));;
  2) result=$((num1 - num2));;
  3) result=$((num1 * num2));;
  4) result=$(awk "BEGIN {print $num1 / $num2}");;
  *) echo "Invalid choice"; exit 1;;
esac
echo "Result: $result"
