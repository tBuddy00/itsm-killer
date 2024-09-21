# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "kubectl get deployments"; then
    echo "Error: 'kubectl get deployments' has not been executed."
    exit 1
fi


if ! history | grep -q "kubectl scale deployment/itsm-demo-deployment --replicas=3"; then
    echo "Error: 'kubectl scale deployment/itsm-demo-deployment --replicas=3' has not been executed."
    exit 1
fi

if ! history | grep -q "kubectl get pods -o wide"; then
    echo "Error: 'kubectl get pods -o wide' has not been executed."
    exit 1
fi


if ! history | grep -q "kubectl describe pods"; then
    echo "Error: 'kubectl describe pods' has not been executed."
    exit 1
fi

if ! history | grep -q "export DIPS=$(kubectl get pods -o jsonpath='{.items[*].status.podIP}');echo $DIPS"; then
    echo "Error: 'export DIPS=$(kubectl get pods -o jsonpath='{.items[*].status.podIP}');echo $DIPS' has not been executed."
    exit 1
fi


if ! history | grep -q "curl $DIPS"; then
    echo "Error: 'curl $DIPS' has not been executed."
    exit 1
fi

exit 0