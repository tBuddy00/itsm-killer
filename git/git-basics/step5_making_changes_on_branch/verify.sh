# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "echo "This is a new feature." >> hello.txt"; then
    echo "echo "This is a new feature." >> hello.txt' has not been executed."
    exit 1
fi

if ! history | grep -q "git add hello.txt"; then
    echo "Error: 'git add hello.txt' has not been executed."
    exit 1
fi


if ! history | grep -q "git commit -m "adding a new feature to 'hello.txt'""; then
    echo "Error: 'git commit -m "adding a new feature to 'hello.txt'"' has not been executed."
    exit 1
fi

exit 0