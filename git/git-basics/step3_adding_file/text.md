# Add a File to your Repository and track it 

After initializing a repository, you can start **adding files** to it. However, simply creating a file in the folder does not mean Git is automatically tracking it. You need to **explicitly** tell Git which files to track using `git add`.

**Why add files to Git?**

* When you create a new file, Git **doesn’t track it by default**. You need to tell Git which files you want it to monitor for changes. This is done through the **staging area**. The staging area is where you prepare files for your *next* commit.

**Why commit changes?**

* A *commit* in Git is like saving a snapshot of your project at a **particular point** in time. Once you have staged the files with `git add`, you can create a commit that stores the current state of those files. Each commit is a milestone that you can return to at any point.

Run this commands as an example: 

`echo "Hello Git, my dear friend!" > hello.txt`{{exec}}

Running `echo "Hello Git, my dear friend!" > hello.txt` will create an *.txt* file called "hello.txt". This file will simply contain our written text *"Hello Git, my dear friend!"* in it.

After running `git add hello.txt`{{exec}}, we will stage our file to git.

> NOTE! You can also use `git add .`, here is the difference: Instead of including just one **specific** file, you will include the entire folder. 

Finally: Using `git commit -m "Add hello.txt file`{{exec}} is saving the current state of your commit.

Running `git log`{{exec}} shows the **history of commits** in your repository, providing you with details like the *commit message*, the *author*, and a unique commit hash.

>NOTE! Git's key strength is tracking the history of changes. By adding and committing files, you’re creating a permanent record of changes that you can review, revert, or share with others. This helps ensure that you never lose your work and can collaborate more effectively.

Before clicking on Check, please make sure to run `echo "Hello Git, my dear friend!" > hello.txt`{{exec}}.