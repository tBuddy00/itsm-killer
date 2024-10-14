#if ! history | grep -q "kubectl get secrets"; then
#    echo "Error: 'kubectl get secrets' has not been executed."
#    exit 1
#fi

if kubectl get secret app-user-creds &> /dev/null; then
    echo "Error: The secret 'app-user-creds' still exists and was not deleted."
    exit 1
fi

exit 0