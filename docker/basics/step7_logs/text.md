# Inspecting container with docker logs and exec

## docker logs

In the previous step, we learned how to run Docker containers in *detached* mode. To check the output of a detached container, we can use the `docker logs <containername>` command.

Earlier, we created a detached nginx container. First, ensure that it's still running by using `docker ps`{{exec}}. If the container isn’t running, restart it with `docker start nginx_test`{{exec}}. If you can’t find it at all using `docker ps -a`, you can recreate it with the following command:

`docker run -d --name nginx_test -p 8000:80 nginx:latest`{{exec}}

Once your container is up and running, you can check its logs by entering:

`docker logs nginx_test`{{exec}}

Here, you’ll see the typical output that nginx generates when the server starts up.

## docker exec

Sometimes, we need to look inside the container to inspect certain files or run commands. A useful command for this is:

`docker exec -ti <containername> <command>`

This allows us to execute commands inside the running container. The `-ti` flag ensures that the command runs interactively in the foreground.

For example, to open a `sh`ell inside the container, use:

`docker exec -ti nginx_test sh`{{exec}}

Once you run the command, the terminal prompt will change to `#`, indicating that you're now inside the container. From here, you can inspect or interact with the container just as you would on a normal Linux system.

When you're done, simply type `exit`{{exec}} to close the `sh`ell and return to your host system.

Before clicking on Check, please make sure to run `docker logs nginx_test`{{exec}}.

