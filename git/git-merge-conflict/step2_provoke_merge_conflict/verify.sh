# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "git commit"; then
    echo "Error: 'git switch main' has not been executed."
    exit 1
fi


#if ! history | grep -q "echo "Hello from the main branch again" > file.txt"; then
#    echo "Error: 'echo "Hello from the main branch again" > file.txt' has not been executed."
#    exit 1
#fi

#if ! history | grep -q "git add file.txt"; then
#    echo "Error: 'git add file.txt' has not been executed."
#    exit 1
#fi

#if ! history | grep -q "git commit -m "Modify file.txt on main""; then
#    echo "Error: 'git commit -m "Modify file.txt on main"' has not been executed."
#    exit 1
#fi

#if ! history | grep -q "git merge my-first-branch2"; then
#    echo "Error: 'git merge my-first-branch2' has not been executed."
#    exit 1
#fi

exit 0