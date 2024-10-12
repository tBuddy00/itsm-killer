# Running a docker container


We've learned that Docker works with both `images` and `containers`. From a single image, you can create multiple containers. The basic command to start a new container is `docker run <[prefix]/imagename>:<tag>`.

While `docker run` is the core command, it often requires a few additional arguments and flags. In this session, we’ll cover some of the most commonly used ones. You'll notice that much of the syntax repeats itself, making it easier to grasp as you go.

Let’s look at this example:

`docker run -it alpine:latest sh`{{exec}}

Here, we’re telling Docker to start a new container. The `alpine:latest` part specifies the *image* and *tag* to use. The `-it` flag stands for `interactive tty`, meaning everything happening in the container will be displayed in your terminal. The final part, `sh`, is the shell we want to run inside the container. If you don’t provide a specific command after the image, Docker will use a default command, but you can override this by adding your own command, as we’ve done here.

In short, the command above means:
>"Docker, run a container interactively in my terminal, use the alpine
image, and start a `sh`ell inside."

Once you run the command, you'll notice the terminal prompt changes to `/ # _`, meaning you're now inside a `sh`ell within the container, running on your host system. Try typing `hostname`{{exec}}. You’ll see a unique identifier of your container. To exit the container, simply type `exit`{{exec}}, and you’ll be returned to your host system with the terminal prompt (likely something like `ubuntu $`). You can verify you're back on the host by running `hostname` again, which should now show a different name (probably **ubuntu**).

Now, let’s explore a few more commands. Give them a try!
  
`docker run -it --rm python:3-alpine python -c "print('hello');"`{{exec}}

In this command, we’re launching a Python container and running a simple script inside it that prints "hello". The `--rm` flag ensures the container is automatically removed after the command completes.

`docker run -d --rm python:3-alpine python -c "print('hello');"`{{exec}}

This command is almost the same, but with one key difference: the `-d` flag runs the container in *detached* mode (in the background). You won’t see "hello" printed this time because the container is running in the background. Instead, you’ll see a sequence of characters, which is the container ID. Thanks to the `--rm` flag, the container is removed once the command finishes.

Feel free to experiment with these commands and explore how Docker handles different scenarios! If you have any questions, don’t hesitate to ask!

Before clicking on Check, please make sure to run `docker run -it alpine:latest sh`{{exec}}.