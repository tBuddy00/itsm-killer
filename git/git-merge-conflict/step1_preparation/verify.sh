# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "mkdir git-merge-conflict-demo"; then
    echo "Error: 'mkdir git-merge-conflict-demo' has not been executed."
    exit 1
fi


#if ! history | grep -q "cd git-merge-conflict-demo"; then
#    echo "Error: 'cd git-merge-conflict-demo' has not been executed."
#    exit 1
#fi

#if ! history | grep -q "git init"; then
#    echo "Error: 'git init' has not been executed."
#    exit 1
#fi

#if ! history | grep -q "git switch -c my-first-branch2"; then
#    echo "Error: 'git switch -c my-first-branch2' has not been executed."
#    exit 1
#fi


exit 0