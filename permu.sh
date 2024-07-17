#!/bin/bash

# Function to calculate factorial
factorial() {
    num=$1
    result=1
    for ((i=1; i<=num; i++))
    do
        result=$((result * i))
    done
    echo $result
}

read -p "Enter value of n: " n
read -p "Enter value of x: " x

fact_n=$(factorial $n)
fact_n_x=$(factorial $((n - x)))

permutation=$((fact_n / fact_n_x))

echo "P($n, $x) = $permutation"
