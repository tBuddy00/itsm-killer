# Prüfen, ob der Befehl ausgeführt wurde
#if ! history | grep -q "kubectl cluster-info"; then
#    echo "Error: 'kubectl cluster-info' has not been executed."
#    exit 1
#fi


if ! history | grep -q "kubectl get nodes"; then
    echo "Error: 'kubectl get nodes' has not been executed."
    exit 1
fi


#Sobald beide Befehle ausgeführt wurden
exit 0