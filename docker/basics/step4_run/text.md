# Running a docker container

We know, that we got docker `Images` and docker `containers`. We can instantiate numerous containers from one image. The standard command to run up a fresh container is `docker run <[prefix]/imagename>:<tag>`.
While `docker run` is the basic command, generally it requires a certain amount of arguments and flags. In this short session we will cover some of them.
You'll notice, that a lot of the syntax repeats itself. 

`docker run -it alpine:latest sh`{{exec}}
Here, we start with `docker run` where we tell docker to fire up a new container from an image. 
`alpine:latest` specifies which *image* and *tag* should be used for that. `-it` stands for `interactive tty` and makes it so, that all things happening within the container will be displayed on our terminal. The last term is `sh`. If we don't specify anything after we declared the image, a default command from the image gets run. But you can override this command by just adding yours right after the image declaration.
In full, this statement means: 
>"docker, run a container interactive on the terminal, use the alpine:latest image for that and we want to run a `sh`ell in there." 

When running the command, you'll notice, that the prompt in the terminal changes to `/ # _`.
We're now in a `sh`ell within the container, which runs on our host system. 
Enter the command `hostname`{{exec}}. You will see an identifier consisting of numbers and letters. That's your container host. Enter `exit`{{exec}}. You see the prompt changing again to `ubuntu $`. With that you're out of the container again and back on your host system. You can verify that by entering the `hostname` command again. This time, the name is different again (probably the output is **ubuntu**).  


Following, you'll see a list of commands and their explanation. Try them out!

`docker run -it --rm python:3-alpine python -c "print('hello');"`{{exec}}

Here, we're running up a python container and within the container we are executing python with a simple script, that prints "hello". Additionally, this time we got a `--rm` flag. This means that
after the execution of our command the container will be removed immediately.  

`docker run -d --rm python:3-alpine python -c "print('hello');"`{{exec}}

This command is similar, but this time we don't see hello. The reason is the `-d` flag. It's the opposite of `-it`. `-d` stands for *detached* (running in the background). The character sequence you see is the identifier of the container that got created (and through `--rm` immediately removed again).
