# Removing docker container and images

When working with Docker containers, it’s easy for the number of containers to grow quickly. By now, you might already see a few containers listed when you run `docker ps -a`{{exec}}.

Luckily, Docker provides several commands to help keep things organized.

There are several commands that will help you with the housekeeping.

## Creating temporary container

One useful option is to create temporary containers that automatically remove themselves when they stop. You can do this directly when you `run` a container. For example:

`docker run -d --rm --name nginx_fluct nginx:latest`{{exec}}

Here, the `--rm` flag ensures that the container is automatically removed as soon as it stops. This is perfect for containers that you only need for a short period. 

After running this command, you can see the container in action with

`docker ps`{{exec}}

Now, let’s stop the container with: `docker stop nginx_fluct`{{exec}}

If you check the status again with `docker ps -a`{{exec}}, you’ll notice that the container has disappeared because it was removed as soon as it stopped.

This is also a great example of why it’s helpful to name your containers explicitly. It makes it much easier to quickly identify and manage them.


## Removing specific container

If you want to clean up specific containers that are no longer needed, you can remove them manually. Keep in mind that only **stopped** containers can be removed.

The command for that is:

`docker rm <containername>`{{exec}}

Let’s try it with the *nginx_test* container from our previous exercises. First, ensure that the container is stopped:

`docker stop nginx_test`{{exec}}

Then, **remove** the container with:

`docker rm nginx_test`{{exec}}

You can verify that it’s been removed by running `docker ps -a`{{exec}}.

## Perform a Global Cleanup

Over time, working with Docker can lead to a lot of unused data piling up, like old images, stopped containers, and unused networks or volumes.

To perform a global cleanup, we can use:

`docker system prune -a`{{exec}}

This command will remove:

* Stopped containers
* Docker images that aren’t associated with any containers
* Unused networks
* Unassociated volumes

First, stop any remaining active containers by using `docker stop <containername>`{{exec}}. Then, run the global cleanup with:

`docker system prune -a`{{exec}}

If asked for *confirmation*, type `y` to proceed.

Afterward, if you run `docker ps -a`{{exec}} and `docker images`{{exec}}, both tables should be **empty** again, showing that everything unnecessary has been cleaned up.

Please make sure to run `docker ps -a`{{exec}}, `docker run -d --rm --name nginx_fluct nginx:latest`{{exec}}, `docker stop nginx_fluct`{{exec}}, and `docker system prune -a`{{exec}} before clicking on Check. This will help us confirm that everything is set up correctly.
