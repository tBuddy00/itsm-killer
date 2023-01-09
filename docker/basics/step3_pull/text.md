# Pulling a docker image

The default docker registry is located at [hub.docker.com](https://hub.docker.com). You can use the website to search for programs already provided as docker images.

In order to *download* an image, we can use the `docker pull` command.

As an example, we're looking for a **nginx web server** on [hub.docker.com](https://hub.docker.com). From the site we get the command 
`docker pull nginx`

Without a prefix, the lookup for the image will default to [hub.docker.com](https://hub.docker.com)

Through that, the following commands are identical in outcome:
`docker pull nginx`
`docker pull docker.io/library/nginx`

Additionally, it is possible to select a specific version for the image using **tags**.
As default `:latest` is used. Otherwise you can use [hub.docker.com](https://hub.docker.com) in order to find additional versions. 

Summarizing, to download our wanted nginx image, we can use the command
`docker pull nginx:latest`{{exec}}

To verify the successful download, we can run `docker images` and should see the nginx image.
