if ! history | grep -q "kubectl get secrets"; then
    echo "Error: 'kubectl get secrets' has not been executed."
    exit 1
fi

if ! history | grep -q "kubectl delete secret app-user-creds"; then
    echo "Error: 'kubectl delete secret app-user-creds' has not been executed."
    exit 1
fi

exit 0