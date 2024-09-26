# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "git --version"; then
    echo "Error: 'git --version' has not been executed."
    exit 1
fi

if ! history | grep -q "git config --global user.name "userOne""; then
    echo "Error: 'git config --global user.name "userOne"' has not been executed."
    exit 1
fi


if ! history | grep -q "git config --global user.email "userone.email@example.com""; then
    echo "Error: 'git config --global user.email "userone.email@example.com"' has not been executed."
    exit 1
fi



if ! history | grep -q "git config --list"; then
    echo "Error: 'git config --list' has not been executed."
    exit 1
fi

#Sobald beide Befehle ausgeführt wurden
exit 0