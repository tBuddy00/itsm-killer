# Modifying the `main` Branch to Create a Conflict

Now that we’ve made changes on our new branch (`my-first-branch2`), let’s switch back to the `main` branch and make some changes there too. By making different changes to the same file on both branches, we’re going to create a scenario where Git doesn’t know which version of the file is correct. This is how we’ll create a merge conflict, so we can learn how to resolve it.

## Switch Back to the `main` Branch

At the moment, we are working on `my-first-branch2`, but now we want to go back to the `main` branch to make some changes there.

To switch back to `main`, simply run: 

`git switch main`{{exec}}

## Modify *file.txt* on the `main` Branch

Now that we’ve created changes in `my-first-branch2`, it’s time to go back to `main` and make a different change to the same file. This will create a conflict when we try to merge later.

Let’s change the content of *file.txt* in the `main` branch:

`echo "Hello from the main branch again" > file.txt`{{exec}}

> **Why this matters**: We’ve now made conflicting changes to the same file in two different branches. These changes are different from what we added in `my-first-branch2`, so when we try to merge, Git will ask us to resolve the conflict.

## Stage and Commit the Changes 

Don’t forget to stage and commit your changes on `main`:

`git add file.txt`{{exec}}

`git commit -m "Modify file.txt on main"`{{exec}}

> **Why this matters:** These commits in `main` now contain different content than the changes in `my-first-branch2`. Git will notice the difference when we attempt to merge, which is exactly what we want to happen!

## Merge `my-first-branch2` into `main` (and Trigger the Conflict!)

Now comes the moment where we attempt to merge the two branches. Since both branches made changes to the same part of *file.txt*, this will trigger a **merge conflict**.

**Start the Merge:**

While still on the `main` branch, initiate the merge with:

`git merge my-first-branch2`{{exec}}

Git is now trying to combine the changes from both branches. But because the changes conflict (we modified the same lines differently), Git can’t automatically decide which version to keep and stops the process to ask for help.

**See the Conflict:**

Git will print something like this:

```
CONFLICT (content): Merge conflict in file.txt
Automatic merge failed; fix conflicts and then commit the result.
```

> **NOTE!** This is Git saying, “I don’t know which version to choose, so you need to resolve this conflict **manually**.”

## Resolving the Conflict

Let’s resolve the merge conflict by deciding how to handle the changes in *file.txt*.

**Check the Status:**

Let's verify which files are in conflict! Run this command:

`git status`{{exec}}

You'll see something like:

```
Unmerged paths:
(both modified): file.txt
```

> **NOTE!** This command shows you the files Git couldn’t automatically merge, confirming that we have conflicts in *file.txt*.

**Open the File to See the Conflict**

Open *file.txt* in a text editor, and you’ll see something like this:

```
<<<<<<< HEAD
Hello from the main branch again
=======
Hello from the my-first-branch2
>>>>>>> my-first-branch2
```

* The part between **<<<<<<< HEAD** and **=======** shows the changes from `main`.

* The part between **=======** and **>>>>>>>** `my-first-branch2` shows the changes from `my-first-branch2`.

> **NOTE!** Git marks the conflicting sections of the file so you can clearly see where the differences are. Your job is to choose how to resolve the conflict.

**Resolve the Conflict:**

Now, decide how you want to resolve the conflict. In this case, you could combine both changes by editing the file to look like this:

```
Hello from the main branch again
Hello from the my-first-branch
```

> **NOTE!** You’re deciding how to combine the two versions. In this example, we kept both changes, but in other cases, you might choose one version over the other.

**Stage the Resolved File**

After resolving the conflict, tell Git you’ve fixed it by staging the file:

`git add file.txt`{{exec}}

Staging the file with `git add`, lets Git know you’ve **manually** handled the conflict and that it can proceed with the merge.

## Complete the Merge!

Run the commit command to finalize the merge:

`git commit`{{exec}}

This step saves the merge into your project history, now with the conflict resolved.