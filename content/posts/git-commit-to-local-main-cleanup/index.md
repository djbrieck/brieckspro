---
title: "Clean up accidental commit on Main or Master and moving changes to a new branch using Git"
date: 2025-02-12T15:27:55-08:00
draft: true
---

## Introduction Summary

So I accidentally committed locally to main or master  without creating a branch first like I wanted to. 
I did not push the changes back to the git repository but only committed to git on my system.

## Here is what I did to get into trouble.

1. I made some changes on main / master

2. Then I committed like so:

    git commit -a

## The cleanup 

 The fix I found that worked to fix my problem is to run the following

    git reset --soft HEAD^

then

    git stash

Then make the branch like I wanted to.

    git checkout -b the_branch_I_wanted

    git stash pop

Now back to doing the commit at the right time now.

    git commit -a

## Reference

[Stack Overflow - How to uncommit my last commit in Git](https://stackoverflow.com/questions/2845731/how-to-uncommit-my-last-commit-in-git)