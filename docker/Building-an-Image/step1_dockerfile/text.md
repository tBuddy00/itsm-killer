# Building A Docker Image

Welcome! In this section, we’ll take a detailed journey into creating Docker images, starting from writing a Dockerfile, building an image, running a container, and finally pushing the image to DockerHub. Each step will be broken down to give you a solid understanding of the process.

By the end, you’ll be confident in building your own Docker images and sharing them with others. Let’s dive in!

> **NOTE!** Some of this may already be familiar to you **after** completing our Docker Basics course, but stay focused and keep moving forward!

**Introduction to Docker and Dockerfiles**

Let's repeat, what we already had learned in the other course section of Docker Basics. 

- **Docker:** A platform that allows you to package applications and their dependencies into a standard format called a "container." A container is an isolated environment that can run applications without interference from other software on your system.

- **Docker Image:** A read-only template used to create Docker containers. It contains everything your application needs to run, including the code, runtime, libraries, and environment variables.

- **Dockerfile:** A text file containing a set of instructions used to create a Docker image. It’s essentially a script that defines what the image will look like and how it behaves.
Now that we have a basic understanding, let’s move on to creating our first Dockerfile.


## Writing Your First Dockerfile

We’ll start by creating a simple Python application and a corresponding Dockerfile that specifies how to build an image for this application.

**Step 1: Create a Project Directory**

First, create a new directory for your Docker project. This is where we’ll keep the application code and Dockerfile.

- `mkdir my-docker-app`{{exec}}

- `cd my-docker-app`{{exec}}

Here is an explanation for you, what this commands does:

- `mkdir my-docker-app:` This command creates a new directory named *my-docker-app*.

- `cd my-docker-app:` This command changes the current working directory to *my-docker-app*.

**Step2: Create a simple Python script**

Let's create a file named `app.py` that contains a simple Python script.

- `echo 'print("Hello, Docker!")' > app.py`{{exec}}

This command writes the line `print("Hello, Docker!")` into a **new** file called *app.py*. It’s a simple Python program that prints **"Hello, Docker!"** to the terminal.

**Step 3: Create a Dockerfile**

Now, let’s create a Dockerfile that will be used to build the Docker image for our Python application.

- `touch dockerfile_demo`{{exec}}

This command creates an empty file named *dockerfile_demo* in the current directory.

To open the *dockerfile_demo* file, we will use the VIM text editor from the terminal, you can use the following command:

- `vim Dockerfile`{{exec}}

This command will open our newly created *dockerfile_demo* in VIM.

**Here’s a quick guide on how to VIM text editor:**
 
- **To start editing**, press `i` to enter **insert mode**.

- **After making changes**, press `ESC` to **exit** insert mode.

- **To save and exit**, type `:wq` and press `Enter`.

- **To exit without saving**, type `:q!` and press `Enter`.

VIM is a powerful editor, but it can be tricky at first. Don't hesitate to try simpler editors like NANO if you need more time to get comfortable with VIM.

### Filling our Dockerfile with Information

After starting VIM, we wan't to fill our newly created *dockerfile_demo* with important informations and `keywords`.

For now, it will be sufficient to include these `keywords` along with their details in our `dockerfile`. You will find an more detailed explanation right below.

**Use an official Python runtime as a base image**
`FROM` `python:3.9-slim`

**Set the working directory inside the container**
`WORKDIR` `/app`

**Copy the current directory contents into the container at /app**
`COPY` `. /app`

**Run the Python application**
`CMD` `["python", "app.py"]`

One `keyword` we want to use is `FROM`: The `FROM` instruction specifies the base image for our custom image. Here, we’re using the official `python:3.9-slim image`, which is a minimal version of Python 3.9. This serves as the foundation for our image, including the Python runtime.

- `WORKDIR` `/app`: This command sets the working directory **inside the container to /app**. Any subsequent commands will be executed relative to this directory. It also ensures that if the /app directory doesn’t exist, Docker will create it.

- `COPY` `. /app`: The `COPY` instruction copies the files from the current directory (on the host machine) into the /app directory in the container. In this case, it copies the app.py file.

- `CMD` `["python", "app.py"]`: The `CMD` instruction specifies the default command to run when the container starts. It uses Python to execute the *app.py* script. The use of `["python", "app.py"]` ensures that the command runs properly in a Unix environment.
