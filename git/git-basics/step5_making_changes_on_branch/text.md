# Making changes on a new Branch

Now that you’ve switched to a new branch, it's time to start making changes. The beauty of branches is that all modifications made on a branch are isolated from the `main` branch until you intentionally merge them. This ensures that your project’s main version remains stable while you work on new features or fixes.

And now, let's do some changes on our new branch:

Let’s say you want to add a new feature to a text file. You can do this by directly editing an existing file or creating a new one. For example:

`echo "This is a new feature." >> hello.txt`{{exec}}

In this case, you're adding a **new line of text** to the hello.txt file.

**Check the status:** After making changes, it's always a good idea to check the status of your repository to see what Git is tracking.

`git status`{{exec}}

This will show you which files have been modified and which files are untracked (if any new ones were added).

**Stage the changes:** Before you commit your changes, you need to add them to the staging area. The staging area allows you to prepare and review changes before finalizing them in a commit. For example, to stage **explicitly** the modified *hello.txt* file we will use:

`git add hello.txt`{{exec}}

> AND AGAIN! If you have **multiple files** (like a whole project folder), you can stage them **all** at once using `git add .`, but it’s a good practice, like in our case *hello.txt*, to stage files **individually** to maintain control over what gets committed.

**Commit the changes:** Once your changes are staged, you can create a commit:

`git commit -m "adding a new feature to 'hello.txt'"`{{exec}}

The `-m` flag allows you to add a **message** to the commit. Always use descriptive messages so you and your collaborators can easily understand what each commit contains.

## Switching back to the `main` Branch

After you’ve finished your work on the new branch, you’ll often want to return to the `main` branch (or another primary branch). This allows you to test how the new feature integrates with the main project or to prepare for merging the changes back into the stable version of your code.

**Switch back to `main`:** To switch back to the `main` branch (or any other branch), we will use `git switch main`{{exec}}.

**Finally:** Checking our file status after a commit with `git status`{{exec}} is always an good idea!

Before clicking on Check, please make sure to run `echo "This is a new feature." >> hello.txt`{{exec}}.

