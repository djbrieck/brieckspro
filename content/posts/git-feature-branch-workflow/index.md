---
title: "A Complete Git Feature Branch Workflow"
date: 2022-08-19T08:35:15-07:00
draft: false
---

## Summary

A concise and practical end to end guide for practicing the Git Feature Branch Workflow, for more details and source documentation see [Git Feature Branch Workflow by Atlassian](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)

In short each change, story , feature, or defect gets its own branch, and that branch will get merged via a pull request back into `main` when its ready.

## Getting started  and the Checkout

    git clone https://gitserver.com/user/pathToYourRepo.git

Feel free to replace `main` with `master` as needed depending on how and when your repo was configured.

    git checkout main
    git pull origin

This reset is optional do it if you want a clean slate each time

    git reset --hard origin/main 

## Create the branch

Feel free to name the branch what makes most sense for you, but I commonly do stuff like name it after issus or defect number I am working on.

    git checkout -b your-feature-branch

## Making changes

The as usual workload for git now

    git add <things-to-add>
    git commit

## Pushing your changes back to the repo

I simply do

    git push

Then I receive this lovely error response that includes the solution I am looking for at the end

    fatal: The current branch your-feature-branch has no upstream branch.
    To push the current branch and set the remote as upstream, use
        git push --set-upstream origin your-feature-branch

Copy and paste the just the following of the reply and press enter.

    git push --set-upstream origin your-feature-branch

For the next push you can just continue doing a normal push as follows

    git push

## Keeping your branch up to date

The missing secret to success, since if your working on a project with multiple developers or if priorities change, you will soon discover this is needed, otherwise things will be horribly out of date with your code to merge back into the updated `main` branch, and then you will be entering a world of pain. Its ok to run this update process after a pull request, but I prefer to do pre pull request.

    git checkout main
    git pull
    git checkout your-feature-branch
    git merge main
    git push

## Opening the pull request

This process will vary depending on what your using to host your repository, but I will leave that as exercise for you to figure out, most of the time it involves visting the repo url in a browser and clicking a series of buttons to open a pull request.

## Approve or reject the changes

Same with this process, you will need to review the code and press the appropriate buttons to approve or reject the changes.

## Merge the changes

This part will happen when you satisfied with the changes and ready to merge them into your `main` branch. This will be a series of button presses on a web interface of your repository solution of choice.

## Delete the branch

As a final step when your done with merging the pull request, the UI will put up a button to delete the branch that was merged in. Feel free to do so as you wish, this will help keep you keep the list of active branches reasonable.
