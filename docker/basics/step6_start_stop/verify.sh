#!/bin/bash

#docker run -it --rm --name hello-world alpine:latest "echo Hello World"

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker inspect nginx_test | grep "IPAddress""; then
    echo "Error: 'docker inspect nginx_test | grep "IPAddress"' has not been executed."
    exit 1
fi


if ! history | grep -q "docker stop nginx_test"; then
    echo "Error: 'docker ps -a' has not been executed."
    exit 1
fi


#Sobald beide Befehle ausgeführt wurden
exit 0