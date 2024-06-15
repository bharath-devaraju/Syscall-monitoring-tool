#!/bin/bash

# Check if the user provided a program name as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <program_name>"
    exit 1
fi

# Run strace on the provided program and filter out lines containing relevant patterns
strace -o output.txt $1  
strace_output=$(cat output.txt | grep -E "")
# Check if camera-related patterns are found
if [ -n "$strace_output" ]; then
    echo "Camera-related system calls detected:"
else
    echo "No camera-related system calls detected."
fi
