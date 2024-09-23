# Prüfen, ob der Befehl ausgeführt wurde
if ! history | grep -q "kubectl get secret app-file-creds -o jsonpath='{.data}'"; then
    echo "Error: 'kubectl get secret app-file-creds -o jsonpath='{.data}'' has not been executed."
    exit 1
fi


if ! history | grep -q "kubectl get secret app-file-creds -o jsonpath='{.data.username}' | base64 --decode"; then
    echo "Error: 'kubectl get secret app-file-creds -o jsonpath='{.data.username}' | base64 --decode' has not been executed."
    exit 1
fi


if ! history | grep -q "kubectl get secret app-file-creds -o jsonpath='{.data.password}' | base64 --decode"; then
    echo "Error: 'kubectl get secret app-file-creds -o jsonpath='{.data.password}' | base64 --decode' has not been executed."
    exit 1
fi


exit 0