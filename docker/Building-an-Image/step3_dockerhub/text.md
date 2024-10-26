# Pushing the Image to DockerHub

DockerHub is a cloud-based registry where you can share Docker images. To make our image available to others, we need to push it to DockerHub. 


**Step 1: Login to DockerHub**

> In the following step we need to have an account on DockerHub, so please feel free to create one at [DockerHub](https://app.docker.com/signup).

Before pushing a new image, we have to login on our terminal to DockerHub with this command: `docker login`{{exec}}. This command prompts you to enter your DockerHub *username* and *password*.

**Step 2: Tag the image for DockerHub**

To push the image to DockerHub, we need to tag it with a name that includes our DockerHub username. This could look like this:

- `docker tag my-python-app <your-dockerhub-username>/my-python-app:latest`

Please replace `<your-dockerhub-username>` with your actual DockerHub username, the full tag will look like this *username/my-python-app:latest*.

And `:latest` ist the version tag. It’s common to use latest for the most recent version, but you can also specify other versions (e.ggit ., v1.0).

**Step 3: Push the image to DockerHub**

After inserting your username and your credentials before, we can push our newly created image to DockerHub. 

To do so, we will use this command:

- `docker push <your-dockerhub-username>/my-python-app:latest`

This command uploads the image to DockerHub. The progress of the upload will be displayed, and once complete, your image will be available in your DockerHub repository.

**Finally: Verify the image on DockerHub** 

Visit your DockerHub account and check if the image appears in your repository list. If it’s there, you’ve successfully pushed your Docker image!