#!/bin/bash

#docker run -it --rm --name hello-world alpine:latest "echo Hello World"

if ! history | grep -q "docker ps -a"; then
    echo "Error: 'docker ps -a"
    exit 1
fi

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker run -d --rm --name nginx_fluct nginx:latest"; then
    echo "Error: 'docker run -d --rm --name nginx_fluct nginx:latest"
    exit 1
fi

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker stop nginx_fluct"; then
    echo "Error: 'docker stop nginx_fluct"
    exit 1
fi


# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker system prune -a"; then
    echo "Error: 'docker system prune -a"
    exit 1
fi

exit 0