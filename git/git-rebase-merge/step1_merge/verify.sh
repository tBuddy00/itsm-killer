# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "mkdir git-merge-example"; then
    echo "Error: 'mkdir git-merge-example' has not been executed."
    exit 1
fi


if ! history | grep -q "cd git-merge-example"; then
    echo "Error: 'cd git-merge-example' has not been executed."
    exit 1
fi

if ! history | grep -q "git init"; then
    echo "Error: 'git init' has not been executed."
    exit 1
fi

if ! history | grep -q "echo "This is the main branch." > main.txt"; then
    echo "Error: 'echo "This is the main branch." > main.txt' has not been executed."
    exit 1
fi


if ! history | grep -q "git add main.txt"; then
    echo "Error: 'git commit -m "Add main.txt on main branch"' has not been executed."
    exit 1
fi

if ! history | grep -q "git commit -m "Add main.txt on main branch""; then
    echo "Error: 'git commit -m "Add main.txt on main branch"' has not been executed."
    exit 1
fi


exit 0