# Checks whether the command was executed
if ! history | grep -q "docker images"; then
    echo "Error: 'docker images' has not been executed."
    exit 1
fi

## Once all commands have been executed
exit 0