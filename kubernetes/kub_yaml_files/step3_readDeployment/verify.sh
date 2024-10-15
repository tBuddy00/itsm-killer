if ! history | grep -q "cat /itsm/itsm_deployment.yaml"; then
    echo "Error: 'cat /itsm/itsm_deployment.yaml' has not been executed."
    exit 1
fi

exit 0;