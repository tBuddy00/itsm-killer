# Prüft, ob 'my-first-branch' existiert als Branch
if ! git branch --list | grep -q "my-first-branch"; then
    echo "Error: The branch 'my-first-branch' does not exist."
    exit 1
fi

if ! history | grep -q "git branch"; then
    echo "Error: 'git branch' has not been executed."
    exit 1
fi


#if ! history | grep -q "git switch my-first-branch"; then
#    echo "Error: 'git switch my-first-branch' has not been executed."
#    exit 1
#fi

exit 0