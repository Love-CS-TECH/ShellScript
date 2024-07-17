#!/bin/bash

read -p "Enter the first file name: " file1
read -p "Enter the second file name: " file2

if cmp -s "$file1" "$file2"; then
    echo "Files are identical."
    read -p "Do you want to delete the duplicate file $file2? (y/n): " choice
    if [ "$choice" = "y" ]; then
        rm "$file2"
        echo "File $file2 has been deleted."
    else
        echo "File $file2 has not been deleted."
    fi
else
    echo "Files are not identical."
fi
