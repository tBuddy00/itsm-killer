# Pulling a docker image

The default Docker registry is located at [hub.docker.com](https://hub.docker.com)., where you can search for a wide range of pre-built Docker images.

To *download* an image, you can use the `docker pull` command.

For example, if you’re looking for an **nginx web server**, you can find it on [hub.docker.com](https://hub.docker.com). The command to download this image would be:

`docker pull nginx`

When you use this command, it automatically pulls the image from [hub.docker.com](https://hub.docker.com) by default. Therefore, the following commands will produce the same result:

`docker pull nginx`
`docker pull docker.io/library/nginx`

You can also specify a particular version of an image using **tags**. By default, *image:latest* is used. To find other available versions, you can browse [hub.docker.com](https://hub.docker.com).

To download the *nginx image* with the latest version, you can use:

`docker pull nginx:latest{{exec}}`

To check if the image was downloaded successfully, run `docker images`{{exec}}. You should see the *nginx image* listed there.

Feel free to reach out if you have any questions or need further assistance!

Please make sure to run `docker pull nginx`{{exec}} and `docker images`{{exec}}before clicking on Check. This will help us confirm that everything is set up correctly.