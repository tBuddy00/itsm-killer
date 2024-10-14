# Prüfen, ob der Befehl ausgeführt wurde
#if ! history | grep -q "kubectl create deployment itsm-srv-deploy --image=nginx:alpine --replicas=3 --port=80"; then
#    echo "Error: 'kubectl create deployment itsm-srv-deploy --image=nginx:alpine --replicas=3 --port=80' has not been executed."
#    exit 1
#fi


if ! kubectl get deployments | grep -q "itsm-srv-deploy"; then
    echo "Error: The deployment 'itsm-srv-deploy' was not found."
    exit 1
fi

#if ! history | grep -q "kubectl get pods"; then
#    echo "Error: 'kubectl get deployments' has not been executed."
#    exit 1
#fi


#if ! history | grep -q "kubectl get pods -o wide"; then
#    echo "Error: 'kubectl get pods -o wide' has not been executed."
#    exit 1
#fi


#Sobald beide Befehle ausgeführt wurden
exit 0