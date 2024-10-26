# Building the Docker Image

Now that our Dockerfile is set up, the next step is to build the Docker image.

First things first, we have to run our build command.

- `docker build -t my-python-app .`{{exec}}

Here's an explanation of what this code actually does:

- `docker build`: This command tells Docker to build an image from the Dockerfile in the current directory.

- `-t my-python-app`: The `-t` flag assigns a name (or "tag") to the image. Here, we tag it as *my-python-app*, making it easier to refer to the image later.

- `.`: The period specifies the build context. The build context is the directory sent to the Docker daemon when building the image. By using `.` (the current directory), Docker can find the Dockerfile and all the files it needs to include in the image.

**Step 2: Understanding the build output**

As the image builds, you’ll see Docker executing the steps from the Dockerfile. It will look something like this:

```
Step 1/4 : FROM python:3.9-slim
 ---> 0b86305d78a0
Step 2/4 : WORKDIR /app
 ---> Using cache
 ---> 6cbe383d1580
Step 3/4 : COPY . /app
 ---> 7c2f09f4be1f
Step 4/4 : CMD ["python", "app.py"]
 ---> Running in 5c29f7f9b7b6
 ---> f6a3a4a5e0e1
Successfully built f6a3a4a5e0e1
Successfully tagged my-python-app:latest
```

Each step represents a line from the Dockerfile, and the output indicates the action Docker took and the new image ID created.

**Step 3: Running the Docker Container**

With the Docker image built, you can now create and run a container based on this image with this command:

- `docker run my-python-app`{{exec}}

And again, here is an explanation of what this command does:

- `docker run`: This command starts a new container from a specified image.

- `my-python-app`: The name of the image to use. Since we tagged our image as *my-python-app*, we can refer to it by this name.

When the container runs, you should see the output:

```
Hello, Docker!
```

This confirms that our Python script executed **successfully** inside the Docker container.