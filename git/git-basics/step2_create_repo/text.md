# Creating a Git Repository

A Git repository (or "repo") is where Git tracks the history of changes to your files. By initializing a repository, you tell Git to start tracking changes in a particular directory.

## Why initalize a Git Repository?

* Without initializing a repository, Git cannot track changes to your files. `git init` sets up the necessary structures so Git can start working in that folder.

* After initialization, the folder becomes a Git repository, and Git will **monitor** any changes you make inside it.

Run this commands, to create a **new repository**:

`mkdir my-first-git-project`{{exec}}

`cd my-first-git-project`{{exec}}

This command makes the folder a Git repository:

`git init`{{exec}}

You now have an **empty** Git repository, initialized in this folder. You can check the status of your repository anytime using:

`git status`{{exec}}

Running `git status` gives you an overview of what’s happening in your repository: what files are being tracked, if there are any changes, and whether those changes are staged for a commit.