#!/bin/bash

# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "docker images"; then
    echo "Error: 'docker images' has not been executed."
    exit 1
fi

exit 0