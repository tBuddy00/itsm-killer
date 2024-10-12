# Git Basics  

Welcome to **Git Basics**! This section is designed for beginners and will introduce you to the foundational concepts and commands of Git. By the end of this part, you’ll understand how to *create* a Git repository, *track* changes, *commit* your work, and *manage* branches—all essential skills for using Git effectively in your projects.

**Goals:**

* Understand how to initialize a Git repository

* Learn how to track changes and commit them

* Work with branches to manage different versions of your code

* Push your code to a remote repository (like GitHub)

Before we can start using Git, we need to install it on your machine: [git-scm.com](https://git-scm.com). Git is a **version control system**, and it needs to be set up locally so you can track changes to your files, create branches, and collaborate with others.

**Why install Git?**

* Git is necessary for you to manage the history of changes to your code, create branches to experiment with new features, and share your work with others via remote repositories like [GitHub](https://github.com).

* Running `git --version`{{exec}} ensures that Git is installed correctly and tells you which version you have.

## Configure Git

Before you start making commits (saving versions of your code), Git needs to know who you are. This information will be attached to every commit you make so that other developers can see who made specific changes

**Why set up user information?**

* Every *commit* in Git contains metadata, including the *author’s name* and *email*. By setting this information globally using the `git config --global command`, all your commits will be properly attributed to you. This is especially important in team environments where multiple developers are working together

And now: Run this commands, to set your personal informations:  

`git config --global user.name "userOne"`{{exec}} 

`git config --global user.email "userone.email@example.com"`{{exec}}

The `git config --list`{{exec}} command allows you to review the configuration to ensure that everything is set correctly.

Before clicking on Check, please make sure to run `git --version`{{exec}}.

