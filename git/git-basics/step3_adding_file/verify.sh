# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "echo "Hello Git, my dear friend!" > hello.txt"; then
    echo "Error: 'echo "Hello Git, my dear friend!" > hello.txt' has not been executed."
    exit 1
fi

if ! history | grep -q "git add hello.txt"; then
    echo "Error: 'git add hello.txt' has not been executed."
    exit 1
fi


if ! history | grep -q "git commit -m "Add hello.txt file""; then
    echo "Error: 'git commit -m "Add hello.txt file"' has not been executed."
    exit 1
fi

exit 0