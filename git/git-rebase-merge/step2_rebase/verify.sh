if ! history | grep -q "git switch feature-branch"; then
    echo "Error: 'git switch feature-branch' has not been executed."
    exit 1
fi

if ! history | grep -q "git rebase main"; then
    echo "Error: 'git rebase main' has not been executed."
    exit 1
fi


exit 0