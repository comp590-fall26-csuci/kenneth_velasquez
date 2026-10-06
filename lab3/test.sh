#!/bin/bash

# 1. Clean and build the latest executable
echo "Building the application..."
make clean
make main

# Check if compilation succeeded
if [ ! -f ./main ]; then
    echo "Error: Compilation failed. 'main' executable not found."
    exit 1
fi

# 2. Run the program and capture its output
echo "Running the program."
OUTPUT=$(./main)

echo "-----------------------------------"
echo "Program Output:"
echo "$OUTPUT"
echo "-----------------------------------"

# 3. Check the outputs
PASSED=true

if [[ "$OUTPUT" != *"55"* ]]; then
    echo "Test Failed: The Fibonacci output should be 55."
    PASSED=false
fi

if [[ "$OUTPUT" != *"1.618034"* ]]; then
    echo "Test Failed: The Golden Ratio output should be 1.618034."
    PASSED=false
fi

# 4. Exit based on the results
if [ "$PASSED" = true ]; then
    echo "All tests passed successfully!"
    exit 0
else
    echo "One or more output verification steps failed."
    exit 1
fi

