# Prüfen, ob der Befehl ausgeführt wurde

if ! kubectl get secret app-file-creds -o jsonpath='{.data.username}' | base64 --decode | grep -q "."; then
    echo "Error: The secret 'app-file-creds' does not contain a valid 'username' entry."
    exit 1
fi


exit 0