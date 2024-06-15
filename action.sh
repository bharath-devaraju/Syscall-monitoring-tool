#!/bin/bash

# Check if the correct number of arguments are provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <executable>"
    exit 1
fi

# Check if the provided executable exists
if [ ! -x "$1" ]; then
    echo "Error: $1 is not an executable or does not exist."
    exit 1
fi

# Run the main program with the provided executable as an argument
Root/main "$1" | sort -u > Output/output.txt

echo "Output saved to output.txt"

