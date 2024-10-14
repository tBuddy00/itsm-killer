if ! history | grep -q "cat /itsm/itsm_service.yml"; then
    echo "Error: 'cat /itsm/itsm_service.yml' has not been executed."
    exit 1
fi
