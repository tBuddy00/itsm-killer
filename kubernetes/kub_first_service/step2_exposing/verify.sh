# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "kubectl get services"; then
    echo "Error: 'kubectl get services' has not been executed."
    exit 1
fi


if ! history | grep -q "kubectl expose deployment/itsm-srv-deploy --port=8080 --target-port=80 --name="webshop-srv""; then
    echo "Error: 'kubectl expose deployment/itsm-srv-deploy --port=8080 --target-port=80 --name="webshop-srv"' has not been executed."
    exit 1
fi


if ! history | grep -q "export SRVIP=$(kubectl get service/webshop-srv -o jsonpath='{.spec.clusterIP}');echo $SRVIP"; then
    echo "Error: 'export SRVIP=$(kubectl get service/webshop-srv -o jsonpath='{.spec.clusterIP}');echo $SRVIP' has not been executed."
    exit 1
fi

if ! history | grep -q "curl $SRVIP:8080"; then
    echo "Error: 'curl $SRVIP:8080' has not been executed."
    exit 1
fi

exit 0