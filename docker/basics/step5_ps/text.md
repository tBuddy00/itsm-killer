# Checking the status of containers

Earlier, we learned how to start new containers from a Docker image. Now, we need a way to check the status of our containers. This is where `docker ps` and `docker ps -a` come in handy.

Let’s start by creating a new container:

`docker run -it --name itsm_hello alpine:latest echo "hello"`

By now, you should be able to understand what this does: we’re instructing Docker to launch a new container using the `alpine:latest` image, and inside that container, run `echo "hello"`, which simply prints "hello." Notice how we named the container *itsm_hello* using the `--name` flag. This will be important shortly.

Now, let’s check on our container. We’ll use `docker ps` to display currently **running* containers. You’ll see a table like this:

`CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES`

But most likely, this table will be empty. Our *itsm_hello* container finished its task by printing "hello," so the container stopped running once the command completed. Remember, containers only stay active as long as the command they are executing is running.

To see containers that have stopped as well, we use:

`docker ps -a`{{exec}}

The `-a` flag stands for **all**, meaning it will list both running and previously run containers. Now, you should see a list of containers from your previous runs. In the `COMMAND` column, you’ll find the command the container was executing, and in the `NAME` column, you’ll see the container’s name. If no name is specified, Docker will generate one automatically, but you should see *itsm_hello* listed here. The `CREATED` column shows when the container was created, and the `STATUS` column will show that it’s currently stopped or `EXITED`. You can also see which `IMAGE` was used to create the container.

So, just remember:

* Use `docker ps`{{exec}} to check on currently running containers.
* Use `docker ps -a`{{exec}} to view all containers, including those that have stopped.

**Challenge Time:** 

Instead of using `docker run -it`, try using `docker run -d` to start a container in detached mode, meaning it will run in the background.

**Your task:**

Run a container from the `nginx:latest` image with its **default** command, in **detached mode**, and name it *nginx_test*. Once the container is running, use `docker ps` to check its status!