if ! kubectl get deployments | grep -q "demo-deployment"; then
    echo "Error: 'kubectl apply -f itsm_deployment.yaml' has not resulted in the expected deployment being created."
    exit 1
fi

exit 0;