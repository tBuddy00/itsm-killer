# Prüfen, ob der Befehl ausgeführt wurde
if ! kubectl get deployments | grep -q "itsm-demo-deployment"; then
    echo "Error: The deployment 'itsm-demo-deployment' was not found."
    exit 1
fi

#if ! history | grep -q "kubectl get deployments"; then
#    echo "Error: 'kubectl get deployments' has not been executed."
#    exit 1
#fi

#if ! history | grep -q "kubectl get pods"; then
#    echo "Error: 'kubectl get pods' has not been executed."
#    exit 1
#fi


#if ! history | grep -q "kubectl describe pods"; then
#    echo "Error: 'kubectl describe pods' has not been executed."
#    exit 1
#fi

#if ! history | grep -q "export DPIP=$(kubectl describe pods | grep "IP:" | tail -n 1 | cut -d " " -f14);echo $DPIP"; then
#    echo "Error: 'export DPIP=$(kubectl describe pods | grep "IP:" | tail -n 1 | cut -d " " -f14);echo $DPIP' has not been executed."
#    exit 1
#fi


#if ! history | grep -q "curl $DPIP"; then
#    echo "Error: 'curl $DPIP' has not been executed."
#   exit 1
#fi

#Sobald beide Befehle ausgeführt wurden
exit 0