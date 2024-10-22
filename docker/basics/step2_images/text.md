# Checking for local images

So far, we know that we work with images and containers. Containers are essentially instances created from images.

Running `docker images`{{exec}} will provide you with a list of all images available locally on your system.

Initially, you might see an empty table. Once you have images, they will be listed with the following details:

- Repository: The name of the image.

- TAG: The image tag.

- Image ID: A unique identifier for the image.

- Created: The time when the image was created.

- SIZE: The size of the image.

Just a heads-up: image sizes can vary widely. They can range from around 25MB to over 10GB, depending on the contents of the image.