---
title: "Clean up accidental commit on Main or Master and moving changes to a new branch using Git"
date: 2025-02-12T15:27:55-08:00
draft: false
---

## Summary

I accidentally committed to main or master without creating a branch first. I did not push the changes to the repository, only committed locally.

## Problem

Made changes on main/master and ran the following command:

    git commit -a

## Solution

To fix this, run:

    git reset --soft HEAD^

then

    git stash

Create the branch:

    git checkout -b the_branch_I_wanted

Apply the stashed changes:

    git stash pop

Now commit:

    git commit -a

## Reference

[Stack Overflow - How to uncommit my last commit in Git](https://stackoverflow.com/questions/2845731/how-to-uncommit-my-last-commit-in-git)