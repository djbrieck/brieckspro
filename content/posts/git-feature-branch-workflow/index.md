---
title: "Git Feature Branch Workflow"
date: 2022-08-19T08:35:15-07:00
draft: true
---

## Summary 

A consise and practical guide to doing the Git Feature Branch Workflow, for more details and source documentation see [Git Feature Branch Workflow by Atlassian](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)

In short each change, story , feature, or defect gets its own branch, and that branch will get merged via a pull request back into `main` when its ready.

## Getting started the Checkout

    git clone https://gitserver.com/user/pathToYourRepo.git

Feel free to replace `main` with `master` as needed depending on how your repo is configured.

    git checkout main
    git pull origin

This reset is optional do it if you want a clean slate each time

    git reset --hard origin/main 

## Create the branch

## Makeing changes

## Keeping your branch up to date

Since if your working on a project with multpple developers you will soon discover this is needed.

    git checkout master

    git pull

    git checkout feature-branch-foo

    git merge master

    git push

## Pushing your changes back to the repo

## Opening the pull request

## Aprove or reject the changes

## Merge the changes

## Delete the branch
