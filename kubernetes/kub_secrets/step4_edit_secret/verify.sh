if ! history | grep -q "kubectl get secrets"; then
    echo "Error: 'kubectl get secrets' has not been executed."
    exit 1
fi


#if ! history | grep -q "echo "AnewPassword!" | base64"; then
#    echo "Error: 'echo "AnewPassword!" | base64' has not been executed."
#    exit 1
#fi


#if ! history | grep -q "kubectl edit secrets app-user-creds"; then
#    echo "Error: 'kubectl edit secrets app-user-creds' has not been executed."
#   exit 1
#fi

#if ! history | grep -q "kubectl get secret app-user-creds -o jsonpath='{.data.password}' | base64 --decode"; then
#    echo "Error: 'kubectl get secret app-user-creds -o jsonpath='{.data.password}' | base64 --decode' has not been executed."
#    exit 1
#fi

exit 0