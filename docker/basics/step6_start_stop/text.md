# Starting and Stopping existing container

In the last exercise, the challenge was to run a detached container from the `nginx:latest` image with the name *nginx_test*. Here's one possible solution of the last challenge:

- `docker run -d --name nginx_test -p 8000:80 nginx:latest`{{exec}}

For a helpful overview of your newly pulled `nginx` image, you can use the command `docker images ls`{{exec}}. This will give you a clear view of all your available Docker images, including the details of your `nginx` image.

A new part of this command is the `-p` 8000:80 flag, which sets up *port forwarding*. This maps port 80 inside the container (where nginx serves content) to port 8000 on our host machine. In simple terms, the format is: `-p [hostport]:[containerport]`.

After running the command, use `docker ps`{{exec}} to check if the container is actively running.

Now, let’s explore the default page of the web server! To find the IP address associated with the container, we can run:

- `docker inspect nginx_test | grep "IPAddress"`{{exec}}.

The docker `inspect` command gives us detailed information about the container, and with `grep`, we filter out the specific IP address. The output should look something like this:

```
"SecondaryIPAddresses": null,
            "IPAddress": "172.17.0.2",
                    "IPAddress": "172.17.0.2",
```

With this IP address, we can access the content directly from the terminal using:

- `curl 172.17.0.2`{{exec}}

Alternatively, since we set up port forwarding, we can also access the default nginx page using our localhost and the *hostport* `8000`:

- `curl 127.0.0.1:8000`{{exec}}

If we want to stop or start the nginx container, we can use:

- `docker stop <container name>`: to stop the container.

- `docker start <container name>`: to start the container again.

For example, to stop our nginx container, run:

- `docker stop nginx_test`{{exec}}

You can verify that the container has stopped by running `docker ps -a`{{exec}}.

To restart the container, simply use `docker start nginx_test`{{exec}}.

Then, check if it’s running again by using `docker ps`{{exec}}. You can also use `curl` to access the default nginx page once more!

