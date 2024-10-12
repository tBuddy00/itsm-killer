#!/bin/bash

#docker run -it --rm --name hello-world alpine:latest "echo Hello World"

# Prüfen, ob der Befehl ausgeführt wurde
#if ! history | grep -q "docker run -it --name itsm_hello alpine:latest echo "hello""; then
#   echo "Error: 'docker run -it --name itsm_hello alpine:latest echo "hello"' has not been executed."
#    exit 1
#fi

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker ps -a"; then
    echo "Error: 'docker ps -a' has not been executed."
    exit 1
fi




#Sobald beide Befehle ausgeführt wurden
exit 0