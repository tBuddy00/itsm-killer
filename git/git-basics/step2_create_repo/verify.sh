# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "mkdir my-first-git-project"; then
    echo "Error: 'mkdir my-first-git-project' has not been executed."
    exit 1
fi

if ! history | grep -q "cd my-first-git-project"; then
    echo "Error: 'cd my-first-git-project' has not been executed."
    exit 1
fi


if ! history | grep -q "git init"; then
    echo "Error: 'git init' has not been executed."
    exit 1
fi



if ! history | grep -q "git status"; then
    echo "Error: 'git status' has not been executed."
    exit 1
fi

#Sobald beide Befehle ausgeführt wurden
exit 0