# Starting and Stopping existing container

In the last exercise, the challenge was to run a detached container from a `nginx:latest` image with the name `nginx_test`. One way, how the command could look like would be:
`docker run -d --name nginx_test -p 8000:80 nginx:latest`{{exec}}

One new thing here is the `-p 8000:80` flag. With that, we perform a *port forwarding*, saying that we map the container port 80 (where nginx works on) to our host system on port 8000. In short this means: `-p [hostport]:[containerport]`.

Using `docker ps`{{exec}}, we should see that the container is actively running.

We can even check out the default page of the web server. To find the IP address, the container is associated with, we can run: `docker inspect nginx_test | grep "IPAddress"`{{exec}}. 
`docker inspect` gives you many details about your container; with the `grep` we try to find the IP.
The output should be something like:
```
"SecondaryIPAddresses": null,
            "IPAddress": "172.17.0.2",
                    "IPAddress": "172.17.0.2",
```

With the IP address, we can now access the content from the terminal with:
`curl 172.17.0.2`{{exec}}

Alternatively, through the port mapping we should also be able to access the default page using our localhost address and the *hostport* `8000`. 
`curl 127.0.0.1:8000`{{exec}}

We can *stop* and *start* our nginx container using `docker stop <container name>` and `docker start <container name>`. To verify the status, we can still use `docker ps -a`{{exec}}.

So, `docker stop nginx_test`{{exec}} should stop the container. Verify the command with `docker ps -a`{{exec}}.

To restart the container, use `docker start nginx_test`{{exec}}. Verify the successfully started container by using `docker ps`{{exec}} again. You can also `curl` the default web page again. 