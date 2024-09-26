# Install Git (if not already installed) 

Before we start using Git, make sure Git is installed on your computer. You can download it from [git-scm.com](https://git-scm.com).

Run the following command to verify the installation:

`git --version`{{exec}}

If Git is installed correctly, it will show the installed version.

## Configure Git

Before using Git, you need to set your username and email, which will be attached to your commits. Run the following commands:

`git config --global user.name "Your Name"`{{exec}}

`git config --global user.email "your.email@example.com"`{{exec}}

You can check your configuration with:

`git config --list`{{exec}}