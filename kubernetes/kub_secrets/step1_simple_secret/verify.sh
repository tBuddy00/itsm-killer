# Prüfen, ob der Befehl ausgeführt wurde
#if ! history | grep -q "kubectl get secrets"; then
#    echo "Error: 'kubectl get secrets' has not been executed."
#    exit 1
#fi

# Wie findest du das? überprüft hier auch wieder ob 'app-user-creds' überhaupt existiert
if ! kubectl get secrets | grep -q "app-user-creds"; then
    echo "Error: Secret 'app-user-creds' does not exist."
    exit 1
fi

#if ! history | grep -q "kubectl create secret generic app-user-creds --from-literal=username=admin --from-literal=password='PWD$from?admin='"; then
#    echo "Error: 'kubectl create secret generic app-user-creds --from-literal=username=admin --from-literal=password='PWD$from?admin='' has not been executed."
#    exit 1
#fi

exit 0