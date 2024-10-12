# Git Merge Conflict: What It Is and How to Resolve It (Preparation)

To fully understand merge conflicts, we need to look at both branches that are involved in the merge. Merge conflicts happen because different changes have been made in each branch, and Git needs you to decide how to combine those changes.

Let’s assume you’ve been working on two branches:

* `main` branch: The stable branch, which contains the base version of your project.

* `my-first-branch2`: A feature branch where you’ve made changes that you now want to merge back into the `main` branch.


## Understand when a merge conflict occurs

A merge conflict typically arises during a merge operation, when Git attempts to combine the changes from two branches into one.

For example, let’s say two developers are working on the same project:

* Developer **A** modifies `line 10` in *file.txt* on the `main` branch.

* Developer **B** modifies `line 10` in *file.txt* on `my-first-branch2`.

When Git attempts to merge the feature branch into `main`, it realizes that both branches have different changes on the same line in *file.txt* and cannot automatically resolve which change is correct.

* **Why does this matter?** Git automatically merges changes when they affect different parts of the codebase. However, when changes overlap in the same lines, Git doesn’t want to overwrite one set of changes without confirmation. Merge conflicts allow you to **manually** decide the best course of action.

## Set Up a New Git Repository

To begin, we need to create a Git repository where we’ll perform all of our operations. Think of it like setting up a workspace —everything starts here!

**Create a New Directory:**

First, let’s create a folder to house our project. This step helps you organize your work. Run the following commands to make a directory and move into it:

`mkdir git-merge-conflict-demo`{{exec}}

`cd git-merge-conflict-demo`{{exec}}

> NOTE! A clean, organized workspace will make it easier to manage your Git repository and see what’s happening as we proceed.


## Initialize Git

Now, let’s initialize the Git repository. This will transform your folder into a **version-controlled project**, meaning Git can now track every change you make!

`git init`{{exec}}

## Create a File in the `main` Branch

Next, we’ll create a file that we can modify later in **both branches** to provoke a merge conflict.

**Create a File:**

Let's create a file named *file2.txt* and add a line of text to it. Think of this as laying the groundwork for future changes.

`echo "Hello from the main branch" > file2.txt`{{exec}}

* **Why this step matters**: This is the file we’ll be working with on both branches. By making it simple for now, we’ll focus on more important things later, like the merge.

## Stage an Commit the File

Now, we need to tell Git that we’re happy with this initial version of *file2.txt* by staging it and committing it.

`git add file2.txt`{{exec}}

`git commit -m "Add initial content to file2.txt"`{{exec}}

## Initiating the Merge that Causes the Conflict

Now, we’re going to create a new branch called  `my-first-branch2`. Think of branches as parallel universes where you can work on new features or ideas **without** affecting the `main` project. Later, we’ll merge these changes into `main`.

**Create and Switch to a new Branch:**

`git switch -c my-first-branch2`{{exec}}

* **Why this step matters**: By creating a new branch, we’re creating a separate space to make changes without affecting the original content in `main`. This is super useful when working on new features!

## Modify the File

Now that we’re on `my-first-branch2`, let’s modify the *file.txt* to simulate working on a new feature.

`echo "Hello from the my-first-branch2" > file.txt`{{exec}}

> **NOTE!** This change will create a **divergence** between `my-first-branch2` and `main`, setting up a situation where we’ll have different versions of the same file in both branches.

## Just Like Before: Stage and Commit the Changes

Let’s stage and commit our changes on this branch.

`git add file.txt`{{exec}} 

`git commit -m "Modify file.txt on my-first-branch2"`{{exec}}

Now, we’ve saved the changes we made on this new branch. Git keeps track of everything, so later, when we try to combine the two branches, it will notice the differences.