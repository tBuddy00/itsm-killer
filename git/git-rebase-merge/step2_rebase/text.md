# Git Rebase

In this part of the course, we’ll be diving into **Git Rebase**, a powerful tool for integrating changes from one branch into another in a way that creates a cleaner, linear project history. While it serves a similar purpose to **Git Merge**, `rebase` works differently by rewriting commit history, which can help simplify and streamline your project’s commit log.

**What is Git Rebase?**

* **Goal:** Rebase integrates changes from one branch into another, but instead of creating a new merge commit, it **reapplies the commits** from one branch on top of another.

* **Process:** Rebase rewrites the commit history to create a linear sequence of commits, avoiding merge commits and creating a cleaner history.

## Scenario with Git Merge:

You have the same two branches (`main` and `feature-branch`), but this time, instead of merging, you want to `rebase` your `feature-branch` on top of `main` to create a cleaner, linear history.

Now, let’s practice using **Git Rebase**. This time, we’ll see how rebasing replays commits from one branch onto another, resulting in a linear commit history.

**Create a New Repository (or Continue from Above):**

You can either start fresh by creating a new repository (same steps as in the `merge` exercise) or continue using the repository from the previous exercise.

**Rebase `feature-branch` onto `main`**

Now, instead of `merging`, let’s use `rebase` to bring the changes from `main` into `feature-branch` without creating a merge commit.

Switch to the feature-branch:

* `git switch feature-branch`{{exec}}

Rebase onto `main`:

* `git rebase main`{{exec}}

Git will take the commits from `feature-branch` and reapply them on top of the **latest commits in `main`. If no conflicts occur, the rebase will complete smoothly.