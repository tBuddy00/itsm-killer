#Either a container named itsm_hello is running or not, it will check for both
if ! docker ps -a --filter "name=itsm_hello" | grep -q "itsm_hello"; then
    echo "Error: No container with the name 'itsm_hello' was found."
    exit 1
fi


exit 0