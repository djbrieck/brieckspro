---
title: "git commited to Master or Main when I wanted to create and make a branch to commit there instead"
date: 2025-02-12T15:27:55-08:00
draft: true
---

So I accidentally did all the work and committed to main or master  without creating a branch like I wanted too while using git version control. I did not push the changes back to the git repository but only committed locally to git on my system in this case.

In my cases I made some changes on main / master

Then I committed like so:

git commit -a

The fix I found is to run the following

git reset --soft HEAD^

then

git stash

Then make the branch

git checkout -b the_branch_I_wanted

git stash pop

Now Do the
git commit -a

[add in title for reference](https://stackoverflow.com/questions/2845731/how-to-uncommit-my-last-commit-in-git)