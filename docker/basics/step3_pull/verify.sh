# Checks whether the command was executed -> especially with nginx
if ! docker images | grep -q "nginx"; then
    echo "Error: NGINX image has not been pulled."
    exit 1
fi

#Once all commands have been executed
exit 0