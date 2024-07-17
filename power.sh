#!/bin/bash

read -p "Enter the base number: " base
read -p "Enter the exponent: " exponent

result=1

for ((i=1; i<=exponent; i++))
do
    result=$((result * base))
done

echo "$base^$exponent = $result"
