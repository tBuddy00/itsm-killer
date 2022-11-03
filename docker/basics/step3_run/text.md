# Running the first docker commands.

Running `docker run` is used to create a new container based on a given image as parameter.

Creating a new container from the `alpine` image, using the `:latest` tag. We override the command to be exeuted
and print out "Hello World" from within the container.

`docker run -it --rm --name hello-world alpine:latest echo "Hello World"`{{exec}}
