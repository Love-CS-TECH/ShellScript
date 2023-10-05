#!/bin/bash

echo "Enter 'smiley' to see a smiley emoji: "
read input

if [ "$input" = "smiley" ]; then
    echo "   *****   "
    echo "  *     *  "
    echo " *  O O  * "
    echo " *   ^   * "
    echo "  *     *  "
    echo "   *****   "
else
    echo "No smiley emoji for you."
fi
