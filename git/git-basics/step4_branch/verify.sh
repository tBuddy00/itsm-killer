# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "git branch my-first-branch"; then
    echo "Error: 'git branch my-first-branch' has not been executed."
    exit 1
fi

if ! history | grep -q "git branch"; then
    echo "Error: 'git branch' has not been executed."
    exit 1
fi


if ! history | grep -q "git switch my-first-branch"; then
    echo "Error: 'git switch my-first-branch' has not been executed."
    exit 1
fi

exit 0