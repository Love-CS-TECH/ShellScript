#!/bin/bash

# Function to perform linear search
linear_search() {
    local n=$1
    local arr=("$@")
    
    echo "Enter the element to search:"
    read search_element
    
    found=0
    for ((i = 0; i < n; i++)); do
        if [ "${arr[i]}" -eq "$search_element" ]; then
            echo "Element $search_element found at index $i."
            found=1
            break
        fi
    done

    if [ $found -eq 0 ]; then
        echo "Element $search_element not found in the array."
    fi
}

# Get the number of elements from the user
echo "Enter the number of elements:"
read n

# Get the array elements from the user
echo "Enter $n elements (separated by space):"
read -a array

# Call the linear_search function with the user-input array
linear_search $n "${array[@]}"
