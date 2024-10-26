# Checks whether the command was executed -> searching for alpine:latest container and if it is running
if ! docker ps --filter "ancestor=alpine:latest" --filter "status=running" | grep -q "alpine:latest"; then
    echo "Error: No running container with the image 'alpine:latest' was found."
    exit 1
fi



# Once all commands have been executed
exit 0