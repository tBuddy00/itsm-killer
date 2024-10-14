# Prüfen, ob der Befehl ausgeführt wurde

if ! kubectl get secrets | grep -q "app-file-creds"; then
    echo "Error: Secret 'app-file-creds' does not exist."
    exit 1
fi

exit 0