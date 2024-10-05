# Merging the Branch into Main

Once you've completed the work on your feature branch, you’ll want to bring those changes back into the `main` branch so that they become part of the primary codebase. **Merging** allows you to combine the changes from your feature branch into another branch, typically `main`. This process ensures that your newly developed feature becomes part of the project while keeping the `main` branch organized and up-to-date.

## Switch to the `main` Branch

Before you can merge your feature branch into `main`, you need to make sure you are currently on the `main` branch. Merging should always happen **from** the branch you want to merge **into**.

* **Why?:** Merging must be done from the target branch where you want to integrate the changes. In this case, `main` is typically the stable branch that contains your production-ready code.

To switch to the `main` branch, use:

`git switch main`{{exec}}

At this point, you are now on the `main` branch and ready to start the merging process.

## Make sure your `main` Branch is up-to-date

Before merging, it’s a good idea to ensure that your `main` branch is up-to-date with any remote changes, especially if you're working in a team where others might have updated the `main` branch.

* **Why?:** Fetching updates from the remote repository ensures there are no unexpected changes or conflicts that might arise during the merge. Keeping the main branch **current** minimizes the risk of merge conflicts later!

To do this, you can use: 

`git pull origin main`{{exec}}

This command will **fetch and merge** any changes from the remote repository into your local `main` branch.

### Merging Time!

Now that your `main` branch is current, you can merge the changes from your feature branch (in this example, *my-first-branch*) into `main`.

To perform the merge, run: 

`git merge my-first-branch`{{exec}}

* **What happens here?:** Git **combines** the changes from the *my-first-branch* branch into the `main` branch. If no conflicting changes were made between the two branches, Git will automatically merge the changes.

If everything goes smoothly, you’ll see a message like:

```
Merge made by the 'recursive' strategy.
```

This indicates a successful merge without conflicts.

## Finally: Verify the Merge!

After successfully merging the `my-first-branch` branch into `main`, it’s a good idea to verify that everything went smoothly. You can check the commit history to ensure the merge was successful and review how the branches were combined.

* **Why?:** Verifying the merge helps ensure that all changes were applied as expected and that no accidental errors occurred during the process.

To view the merge history use:

`git log --oneline --graph --decorate`{{exec}}

This command provides a visual representation of your commit history, showing how the branches were merged.

Please make sure to run `git switch main`{{exec}}, `git pull origin main`{{exec}}, `git merge my-first-branch`{{exec}} and `git log --oneline --graph --decorate`{{exec}} before clicking on Check. This will help us confirm that everything is set up correctly.
