if ! kubectl get secret | grep -q "itsm-secret"; then
    echo "Error: 'itsm_secret.yaml' has not been applied successfully."
    exit 1
fi

exit 0;

