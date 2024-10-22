#Same as before -> Check for an container named nginx_fluct
if ! docker ps -a --filter "name=nginx_fluct" | grep -q "nginx_fluct"; then
    echo "Error: No container with the name 'nginx_fluct' was found."
    exit 1
fi



exit 0