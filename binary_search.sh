#!/bin/bash

# Function to perform binary search
binary_search() {
    local arr=("$@")
    local n=${#arr[@]}
    local target=$1

    local low=0
    local high=$((n - 1))

    while [ $low -le $high ]; do
        mid=$(( (low + high) / 2 ))
        mid_value=${arr[mid]}

        if [ $mid_value -eq $target ]; then
            echo "Element $target found at index $mid."
            return
        elif [ $mid_value -lt $target ]; then
            low=$((mid + 1))
        else
            high=$((mid - 1))
        fi
    done

    echo "Element $target not found in the array."
}

# Get the number of elements from the user
echo "Enter the number of elements:"
read n

# Get the sorted array elements from the user
echo "Enter $n sorted elements (separated by space):"
read -a array

# Get the element to search from the user
echo "Enter the element to search:"
read target

# Call the binary_search function with the user-input array and target element
binary_search $target "${array[@]}"
