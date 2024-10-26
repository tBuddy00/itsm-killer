# Checks whether the command was executed
if ! history | grep -q "docker --version"; then
    echo "Error: 'docker --version' has not been executed."
    exit 1
fi

if ! history | grep -q "^docker$"; then
    echo "Error: 'docker' has not been executed."
    exit 1
fi

## Once all commands have been executed
exit 0
