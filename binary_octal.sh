#!/bin/bash

# Function to convert binary to octal
binary_to_octal() {
    local binary=$1
    local octal=""

    # Pad the binary number with leading zeros if needed
    binary=$(printf "%08d" "$binary")

    # Convert each group of 3 binary digits to octal
    for ((i = 0; i < 8; i += 3)); do
        group=${binary:$i:3}
        decimal=$((2#"$group"))
        octal+="$(printf "%o" "$decimal")"
    done

    echo "Octal equivalent: $octal"
}

# Get binary input from the user
echo "Enter a binary number:"
read binary_input

# Check if the input is a valid binary number
if [[ "$binary_input" =~ ^[01]+$ ]]; then
    # Call the binary_to_octal function with the user-input binary number
    binary_to_octal "$binary_input"
else
    echo "Invalid binary input. Please enter a valid binary number (0s and 1s only)."
fi
