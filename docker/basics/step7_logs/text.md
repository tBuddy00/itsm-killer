# Inspecting container with docker logs and exec


## docker logs
In the previous step, we learned about docker containers which run *detached*.
One way to check the output of the container is to use `docker logs <containername>`. 

Previously, we created a detached nginx container. Make sure the container is still running by entering `docker ps`{{exec}}. If not, restart the container by entering `docker start nginx_test`{{exec}} or if you can't find it with `docker ps -a`, create it again with for example:
`docker run -d --name nginx_test -p 8000:80 nginx_test nginx:latest`{{exec}}

Having the running container, we can check the logs with:
`docker logs nginx_test`{{exec}}

You should see the output from nginx that typically comes up, when starting the server. 

# docker exec
Sometimes, we want to inspect certain files within the container. 
One possibility for that is `docker exec -ti <containername> <command>`.

With that we can run commands within the (running!) container. Again, with the -ti flag we can run the command in the foreground. 

That way, we can for example run a `sh`ell inside the container.
`docker exec -ti nginx_test sh`{{exec}}.

As in our exercise with ***running containers**, you'll see that the prompt changes. 
You're now inside the container and can inpsect it. 

Enter `exit`{{exec}} to close the shell again. 