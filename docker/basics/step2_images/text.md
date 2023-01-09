# Checking for local images

So far we know, that we got `images` and `containers`. Containers are instances from images.

Running `docker images`{{exec}} gives us a list of all locally available images.

The result gives us an **empty table**. But we can see that our images will be listed with image name under the *Repository* column, the image tag under the *TAG*, the specific image identifier under *Image ID* the time when the image was created under *Created* and finally the image size under *SIZE*. 


Note that the image size can vary drastically. Just to give an idea, the range can reach from around `25MB` to over `10GB`. 