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
fact_x=$(factorial $x)
fact_n_x=$(factorial $((n - x)))

binomial_coefficient=$((fact_n / (fact_x * fact_n_x)))

echo "C($n, $x) = $binomial_coefficient"
