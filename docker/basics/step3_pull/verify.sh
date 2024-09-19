#!/bin/bash

#docker run -it --rm --name hello-world alpine:latest "echo Hello World"

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker pull nginx"; then
    echo "Error: 'docker pull nginx' has not been executed."
    exit 1
fi

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker images"; then
    echo "Error: 'docker images' has not been executed."
    exit 1
fi

#Sobald beide Befehle ausgeführt wurden
exit 0