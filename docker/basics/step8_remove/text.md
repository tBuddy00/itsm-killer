# Removing docker container and images

Working with docker containers, the amount of existing ones can grow quite quickly. 
Even by now, you should see quite an amount of containers when entering `docker ps -a`{{exec}}

There are several commands that will help you with the housekeeping.

## Creating temporary container
The first method is used directly, when you `run` a new docker container. 
As an example: 
`docker run -d --rm --name nginx_fluct nginx:latest`{{exec}}

Here, we set the `--rm` flag. With that, the moment the container stops, it gets removed automatically. This is very helpful for containers that you need just for a short amount of time.

Having executed the command, you can see the container running with `docker ps`{{exec}}

Now, we will stop the container with `docker stop nginx_fluct`{{exec}}

Check the container status again with `docker ps -a`{{exec}}. You will notice, that the container can't be found since it got removed immediately after stopping the container.

By now you will also recognize why it is useful to name new container explicitly. 
It just helps you to quickly identify which container you're looking for.


## Removing specific container

Another method is to remove container that aren't needed anymore. Note that only already ***stopped*** containers can be removed. 
The command for that is `docker rm <containername>`{{exec}}

From our previous exercises, we should still have our `nginx_test` container. 
Let's make sure that the container is stopped with 
`docker stop nginx_test`{{exec}}

Next, we remove the stopped container with:
`docker rm nginx_test`{{exec}}

Running `docker ps -a`{{exec}}, we can verify that the container was removed.


## Perform global cleanup

Working with *docker* will lead to a lot of configuration data that piles up. 
Besides `images` with older `tags` and unneeded `containers`, there are also specific `networks` and `volumes` which we haven't covered here.  

We can use `docker system prune -a` to perform a global cleanup of docker. 
Docker searches hereby for *inactive* and *unmapped* items and removes these. 

Some of that includes:
* not running containers
* docker images where no container exists for it
* networks which are not associated
* volumes that are not associated anymore

Run `docker ps`{{exec}} and find all remaining active container. Stop them by using `docker stop`. Finally, run `docker system prune -a`{{exec}} to perform a full cleanup. If asked for confirmation, agree to it with `y` 

Finally, running `docker ps -a`{{exec}} and `docker images`{{exec}} should give you empty tables again.

