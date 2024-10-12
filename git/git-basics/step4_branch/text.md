# Working with Branches

Branches are one of Git’s most powerful features. They allow you to create **separate** "versions" or "lines" of your project, so you can work on new features or fixes **without** disturbing the `main` codebase. By working with branches, you ensure that the main project remains stable, while still allowing for innovation and experimentation.

**What is a Branch?**

Think of a branch as a parallel version of your project. When you create a branch, you copy the current state of your project at that moment. From there, you can make changes independently without affecting the original project (commonly the `main` branch).

The default branch in Git is called `main` (or `master` in older repositories). This is typically where the production-ready code lives. If you’re working on a new feature or fix, it’s a best practice to *create* a new branch for that specific task.

## Creating a new Branch 

To create a new branch in Git, you use the `git branch` command followed by the name you want to give the new branch. Here's how you do it:

`git branch my-first-branch`{{exec}}

What happens here?

* You’ve created a new branch named *my-first-branch*.

* This branch is an **exact** copy of the `main` branch at the time of creation, but you're not on it yet. You are still on the `main` branch after this step.

To view all the branches in your repository, you can use:

`git branch`{{exec}}

>TIP! Instead of using `git branch my-first-branch` to create a new branch for your project, you can also use: `git switch -c my-first-branchTwo`{{exec}}

The difference between `git switch -c my-first-branch` and `git branch my-first-branch` lies in what the commands do and how they streamline your workflow. 

**Let's break it down:**

* `git branch my-first-branch`: This command **creates** a new branch named *my-first-branch*, but it does **not** switch to it. You remain on your **current** branch (likely `main` or another branch). This is useful if you want to create multiple branches without immediately switching to any of them.

**Use case:** You may want to set up several branches ahead of time and decide to work on them later.

* `git switch -c my-first-branch`: This command **creates** the new branch and immediately switches to it in one step. The `-c` flag stands for **"create"**, so it creates the branch and moves you to that branch at the same time. This is more efficient if you're planning to start working on the new branch right away.

**Use case:** When you're ready to begin development on a new feature or fix, and you want to create the branch and start working on it immediately.

## Switching to a new Branch

After creating the new branch, you need to switch to it in order to start working on it. To do this, you use the `git switch` command:

`git switch my-first-branch`{{exec}}

Now, you are on the *my-first-branch* branch. Any changes you make will **only** affect this branch and not the `main` branch.

You can confirm which branch you’re on at any time by running:

`git branch`

You should see on your terminal something like this:

```
    my-first-branchTwo
    main 
*   my-first-branch
```

The **active branch** will have an asterisk (*) next to it.