#!/bin/bash

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker --version"; then
    echo "Error: 'docker --version' has not been executed."
    exit 1
fi

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "^docker$"; then
    echo "Error: 'docker' has not been executed."
    exit 1
fi

#Sobald beide Befehle ausgeführt wurden
exit 0
