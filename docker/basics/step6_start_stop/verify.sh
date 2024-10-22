#Either a container named nginx_test is running or not, it will check for both
if ! docker ps -a --filter "name=nginx_test" | grep -q "nginx_test"; then
    echo "Error: No container with the name 'nginx_test' was found."
    exit 1
fi


exit 0