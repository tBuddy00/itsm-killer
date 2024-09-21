# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "kubectl get deployments"; then
    echo "Error: 'kubectl get deployments' has not been executed."
    exit 1
fi


if ! history | grep -q "kubectl get pods"; then
    echo "Error: 'kubectl get pods' has not been executed."
    exit 1
fi

if ! history | grep -q "kubectl delete deployment itsm-demo-deployment"; then
    echo "Error: 'kubectl delete deployment itsm-demo-deployment' has not been executed."
    exit 1
fi

exit 0