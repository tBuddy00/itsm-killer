#!/bin/bash

#docker run -it --rm --name hello-world alpine:latest "echo Hello World"


# Prüfen, ob der Befehl ausgeführt wurde
if ! docker ps --filter "ancestor=alpine:latest" --filter "status=running" | grep -q "alpine:latest"; then
    echo "Error: No running container with the image 'alpine:latest' was found."
    exit 1
fi



# Prüfen, ob der Befehl ausgeführt wurde
#if ! history | grep -q "docker run -it --rm python:3-alpine python -c "print('hello');""; then
#    echo "Error: "'docker run -it --rm python:3-alpine python -c "print('hello');'" has not been executed."
#    exit 1
#fi


# Prüfen, ob der Befehl ausgeführt wurde
#if ! history | grep -q "docker run -d --rm python:3-alpine python -c "print('hello');""; then
#    echo "Error: "'docker run -d --rm python:3-alpine python -c "print('hello');'" has not been executed."
#    exit 1
#fi


#Sobald alle Befehle ausgeführt wurden
exit 0