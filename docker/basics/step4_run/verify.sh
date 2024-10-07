#!/bin/bash

<<<<<<< HEAD
#docker run -it --rm --name hello-world alpine:latest "echo Hello World"
=======
#docker run -it --rm --name hello-world alpine:latest "echo Hello World"


# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker run -it alpine:latest sh"; then
    echo "Error: 'docker run -it alpine:latest sh' has not been executed."
    exit 1
fi

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "hostname"; then
    echo "Error: 'hostname' has not been executed."
    exit 1
fi

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker run -it --rm python:3-alpine python -c "print('hello');""; then
    echo "Error: "'docker run -it --rm python:3-alpine python -c "print('hello');'" has not been executed."
    exit 1
fi


# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker run -d --rm python:3-alpine python -c "print('hello');""; then
    echo "Error: "'docker run -d --rm python:3-alpine python -c "print('hello');'" has not been executed."
    exit 1
fi


#Sobald alle Befehle ausgeführt wurden
exit 0
>>>>>>> 08c58a3 (adding in 'index.json' backend in 'git-basics')
