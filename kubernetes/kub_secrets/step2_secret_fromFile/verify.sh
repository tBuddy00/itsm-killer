# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "cd /itsm; ls -la"; then
    echo "Error: 'cd /itsm; ls -la' has not been executed."
    exit 1
fi


if ! history | grep -q "kubectl create secret generic app-file-creds --from-file=username=./user.txt --from-file=password=./pass.txt"; then
    echo "Error: 'kubectl create secret generic app-file-creds --from-file=username=./user.txt --from-file=password=./pass.txt' has not been executed."
    exit 1
fi

if ! history | grep -q "kubectl get secrets"; then
    echo "Error: 'kubectl get secrets' has not been executed."
    exit 1
fi


if ! history | grep -q "kubectl describe secret app-file-creds"; then
    echo "Error: 'kubectl describe secret app-file-creds' has not been executed."
    exit 1
fi


exit 0