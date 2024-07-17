#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 <file1> <file2> <file3>"
    exit 1
fi

cat "$1" "$2" "$3" | sort | less
