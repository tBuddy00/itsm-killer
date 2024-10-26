#!/bin/bash

# This script verifies that "docker --version" was successfully executed.
# For KillerCoda's Validator to verify as success, the script must exit with code 0 
# and output only "done". Any other output will be interpreted as an error.

# Run "docker --version" and check the exit code.
if docker --version &> /dev/null; then
    # If successful, output "done" and exit with code 0.
    echo "done"
    exit 0
else
    # If unsuccessful, exit with code 1.
    exit 1
fi

