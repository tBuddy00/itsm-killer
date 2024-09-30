# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "git switch main"; then
    echo "echo 'git switch main' has not been executed."
    exit 1
fi

if ! history | grep -q "git pull origin main"; then
    echo "Error: 'git pull origin main' has not been executed."
    exit 1
fi


if ! history | grep -q "git merge my-first-branch"; then
    echo "Error: 'git merge my-first-branch' has not been executed."
    exit 1
fi

if ! history | grep -q "git log --oneline --graph --decorate"; then
    echo "Error: 'git log --oneline --graph --decorate' has not been executed."
    exit 1
fi


exit 0