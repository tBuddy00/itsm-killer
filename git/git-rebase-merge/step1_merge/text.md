# Git Merge

In this part of the course, we will explore one of the most common and powerful features of Git: **merging** branches. **Git Merge** allows you to combine the work done on different branches into one unified project. This is particularly useful when you’ve been developing a feature or fixing a bug in an isolated branch and want to integrate those changes back into your `main` codebase.

**What is Git Merge?**

* **Goal:** Merge combines the histories of two branches together, keeping the commit history intact.

* **Process:** When you merge two branches, Git creates a new “merge commit” that ties the histories of both branches together.

## Scenario with Git Merge

You’re working on a project with two branches: the `main` branch, where stable code lives, and a `feature-branch`, where you’re adding a new feature. You want to finish the feature and merge it into `main` while keeping track of the development history of both branches.

**Create a Git Repository:**

First, create a new directory for your project and initialize it as a Git repository.

* `mkdir git-merge-example`{{exec}}

* `cd git-merge-example`{{exec}}

* `git init`{{exec}}

You’ve now created a new Git repository where you can track changes to your files.

**Create the `main` Branch and Add a File**

Let’s start by creating a file on the `main` branch.

**Create a file called *main.txt*:**

* `echo "This is the main branch." > main.txt`{{exec}}

**Add the file to the staging area and commit it:**

* `git add main.txt`{{exec}}

* `git commit -m "Add main.txt on main branch"`{{exec}}

You’ve now made your first commit on the `main` branch.

**Create and Switch to `feature-branch`:**

Next, create a new branch to work on a feature. This will isolate your changes from the `main` branch.

Let's create an new branch and switch to it:

* `git switch -c feature-branch`{{exec}}

Create a file called `feature.txt`:

* `echo "This is a new feature." > feature.txt`{{exec}}

**Stage and commit this change:**

* `git add feature.txt`{{exec}}

* `git commit -m "Add feature.txt on feature-branch"`{{exec}}

At this point, the two branches (`main` and `feature-branch`) have different files.

**Make a Change in `main`:**

Switch back to the `main` branch and make a change:

* `git switch main`{{exec}}

Modify the *main.txt* file:

* `echo "Main branch updated." >> main.txt`{{exec}}

Stage and commit the changes:

* `git add main.txt`{{exec}}

* `git commit -m "Update main.txt on main branch"`{{exec}}

Now you have two separate changes:

* `main`: has changes in *main.txt*
* `feature-branch`: has the new *feature.txt*.

Merge `feature-branch` into `main`:

It’s time to merge the `feature-branch` into the `main` branch.

Switch back to `main` (if you’re not already on it):

* `git switch main`{{exec}}

Merge the changes from feature-branch into main:

*`git merge feature-branch`{{exec}}

You’ll see a **merge** commit that combines both histories, keeping all the original commits from both branches.

Finally: Let's check our log to see the merge commit!

* `git log --oneline --graph`{{exec}}