#!/bin/bash

#docker run -it --rm --name hello-world alpine:latest "echo Hello World"
#if ! history | grep -q "docker start nginx_test"; then
#    echo "Error: 'docker start nginx_test' has not been executed."
#    exit 1
#fi

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker logs nginx_test"; then
    echo "Error: 'docker logs nginx_test' has not been executed."
    exit 1
fi

# Prüfen, ob der Befehl ausgeführt wurde
#if ! history | grep -q "docker exec -ti nginx_test sh"; then
#    echo "Error: 'docker exec -ti nginx_test sh' has not been executed."
#    exit 1
#fi

exit 0