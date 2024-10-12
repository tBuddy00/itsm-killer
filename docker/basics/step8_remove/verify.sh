#!/bin/bash

#docker run -it --rm --name hello-world alpine:latest "echo Hello World"

if ! history | grep -q "docker ps"; then
    echo "Error: 'docker ps -a' has not been executed."
    exit 1
fi

if ! history | grep -q "docker stop nginx_fluct"; then
    echo "Error: 'docker ps -a' has not been executed."
    exit 1
fi



# Prüfen, ob der Befehl ausgeführt wurde
#if ! history | grep -q "docker run -d --rm --name nginx_fluct nginx:latest"; then
#    echo "Error: 'docker run -d --rm --name nginx_fluct nginx:latest' has not been executed."
#    exit 1
#fi

# Prüfen, ob der Befehl ausgeführt wurde
#if ! history | grep -q "docker stop nginx_fluct"; then
#    echo "Error: 'docker stop nginx_fluct' has not been executed."
#    exit 1
#fi


# Prüfen, ob der Befehl ausgeführt wurde
#if ! history | grep -q "docker system prune -a"; then
#    echo "Error: 'docker system prune -a' has not been executed."
#    exit 1
#fi

exit 0