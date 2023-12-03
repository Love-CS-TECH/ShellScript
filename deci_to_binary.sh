#!/bin/bash

# Function to convert decimal to binary
decimal_to_binary() {
    local decimal=$1
    local binary=""

    # Convert decimal to binary
    while [ $decimal -gt 0 ]; do
        remainder=$((decimal % 2))
        binary="$remainder$binary"
        decimal=$((decimal / 2))
    done

    # Print the binary representation
    echo "Binary equivalent: $binary"
}

# Get decimal input from the user
echo "Enter a decimal number:"
read decimal_input

# Check if the input is a valid decimal number
if [[ "$decimal_input" =~ ^[0-9]+$ ]]; then
    # Call the decimal_to_binary function with the user-input decimal number
    decimal_to_binary "$decimal_input"
else
    echo "Invalid decimal input. Please enter a valid decimal number."
fi
