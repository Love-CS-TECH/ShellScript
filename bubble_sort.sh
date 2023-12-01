#!/bin/bash

# Function to perform bubble sort
bubble_sort() {
    local n=$1
    local arr=("$@")

    for ((i = 0; i < n-1; i++)); do
        for ((j = 0; j < n-i-1; j++)); do
            if [ ${arr[j]} -gt ${arr[j+1]} ]; then
                # Swap elements if they are in the wrong order
                temp=${arr[j]}
                arr[j]=${arr[j+1]}
                arr[j+1]=$temp
            fi
        done
    done

    # Print the sorted array
    echo "Sorted Array: ${arr[@]}"
}

# Get the number of elements from the user
echo "Enter the number of elements:"
read n

# Get the array elements from the user
echo "Enter $n elements (separated by space):"
read -a array

# Call the bubble_sort function with the user-input array
bubble_sort $n "${array[@]}"
