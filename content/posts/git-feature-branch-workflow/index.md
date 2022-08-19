---
title: "A Complete Git Feature Branch Workflow"
date: 2022-08-19T08:35:15-07:00
draft: true
---

## Summary 

A consise and practical end to end guide for practicing the Git Feature Branch Workflow, for more details and source documentation see [Git Feature Branch Workflow by Atlassian](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)

In short each change, story , feature, or defect gets its own branch, and that branch will get merged via a pull request back into `main` when its ready.

## Getting started the Checkout

    git clone https://gitserver.com/user/pathToYourRepo.git

Feel free to replace `main` with `master` as needed depending on how your repo is configured.

    git checkout main
    git pull origin

This reset is optional do it if you want a clean slate each time

    git reset --hard origin/main 

## Create the branch

Feel free to name the branch what makes most sense, but I commonly do boring stuff like name it after issus or defect numbers.

    git checkout -b your-feature-branch

## Makeing changes

As usual workload for git here nothing special

    git add <things-to-add>
    git commit

## Pushing your changes back to the repo

    git push

    fatal: The current branch Setting_a_version has no upstream branch.
    To push the current branch and set the remote as upstream, use
        git push --set-upstream origin Setting_a_version



    git push --set-upstream origin your-feature-branch

    VS

    git push -u origin your-feature-branch   ###Whats a tracking branch -u

## Keeping your branch up to date

The missing secret to success, since if your working on a project with multiple developers you will soon discover this is needed, otherwise things will be horibly out of date with your code to merge back into a updated `main` branch, and then you will be entering a world of pain. Its ok to run this after a pull request, but I prefer to do pre pull request.

    git checkout main
    git pull
    git checkout your-feature-branch
    git merge main
    git push


## Opening the pull request

## Aprove or reject the changes

## Merge the changes

## Delete the branch
