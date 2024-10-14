# Prüfen, ob der Befehl ausgeführt wurde

#if ! kubectl get deployments | grep -q "itsm-srv-deploy"; then
#    echo "Error: Deployment 'itsm-srv-deploy' does not exist."
#    exit 1
#fi

if ! kubectl get services | grep -q "webshop-srv"; then
    echo "Error: Service 'webshop-srv' does not exist."
    exit 1
fi


#if ! history | grep -q "kubectl expose deployment/itsm-srv-deploy --port=8080 --target-port=80 --name="webshop-srv""; then
#    echo "Error: 'kubectl expose deployment/itsm-srv-deploy --port=8080 --target-port=80 --name="webshop-srv"' has not been executed."
#    exit 1
#fi


#if ! history | grep -q "export SRVIP=$(kubectl get service/webshop-srv -o jsonpath='{.spec.clusterIP}');echo $SRVIP"; then
#    echo "Error: 'export SRVIP=$(kubectl get service/webshop-srv -o jsonpath='{.spec.clusterIP}');echo $SRVIP' has not been executed."
#    exit 1
#fi

#if ! history | grep -q "curl $SRVIP:8080"; then
#    echo "Error: 'curl $SRVIP:8080' has not been executed."
#    exit 1
#fi

exit 0