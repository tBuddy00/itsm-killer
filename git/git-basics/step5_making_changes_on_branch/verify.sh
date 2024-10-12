# Prüfen, ob 'hello.txt' existiert
if [ ! -f hello.txt ]; then
    echo "Error: File 'hello.txt' does not exist."
    exit 1
fi

# Überprüfen, ob der Text 'This is a new feature.' in der Datei enthalten ist
if ! grep -q "This is a new feature." hello.txt; then
    echo "Error: The content 'This is a new feature.' was not found in 'hello.txt'."
    exit 1
fi



#if ! history | grep -q "echo "This is a new feature." >> hello.txt"; then
#    echo "echo "This is a new feature." >> hello.txt' has not been executed."
#    exit 1
#fi

#if ! history | grep -q "git add hello.txt"; then
#    echo "Error: 'git add hello.txt' has not been executed."
#    exit 1
#fi


#if ! history | grep -q "git commit -m "adding a new feature to 'hello.txt'""; then
#    echo "Error: 'git commit -m "adding a new feature to 'hello.txt'"' has not been executed."
#    exit 1
#fi

exit 0