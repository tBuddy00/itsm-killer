# Prüfen, ob der Befehl ausgeführt wurde
#if ! history | grep -q "cd /itsm; ls -la"; then
#    echo "Error: 'cd /itsm; ls -la' has not been executed."
#    exit 1
#fi

if ! kubectl get secrets | grep -q "app-file-creds"; then
    echo "Error: Secret 'app-file-creds' does not exist."
    exit 1
fi

# Überprüfen, ob Keys vorhanden sind
if ! kubectl get secret app-file-creds -o jsonpath='{.data.username}' &> /dev/null; then
    echo "Error: Key 'username' not found in secret 'app-file-creds'."
    exit 1
fi

if ! kubectl get secret app-file-creds -o jsonpath='{.data.password}' &> /dev/null; then
    echo "Error: Key 'password' not found in secret 'app-file-creds'."
    exit 1
fi

# erfolgreiche Bestätigung
echo "Success: Secret 'app-file-creds' has been created and both keys are present."
exit 0



#if ! history | grep -q "kubectl create secret generic app-file-creds --from-file=username=./user.txt --from-file=password=./pass.txt"; then
#    echo "Error: 'kubectl create secret generic app-file-creds --from-file=username=./user.txt --from-file=password=./pass.txt' has not been executed."
#    exit 1
#fi

#if ! history | grep -q "kubectl get secrets"; then
#    echo "Error: 'kubectl get secrets' has not been executed."
#    exit 1
#fi


#if ! history | grep -q "kubectl describe secret app-file-creds"; then
#    echo "Error: 'kubectl describe secret app-file-creds' has not been executed."
#    exit 1
#fi


exit 0