---
title: "Git delete files added by mistake"
date: 2024-04-18T15:13:55-07:00
draft: false
---

This happens occasionally for me but sometimes a file gets added into your git repository that you did not want to add
like a project settings file for your IDE, etc. In my case I started using a new [IDE](https://en.wikipedia.org/wiki/Integrated_development_environment) called [Fleet](https://www.jetbrains.com/fleet/), it 
started creating files in a new .fleet directory that was not in my [`.gitignore`](https://git-scm.com/docs/gitignore) So I accidentally check in some
stuff for this new IDE. 

## Here is how you delete what was already commited, but want to leave the files on disk still locally

    git rm --cached name_of_file_to_delete

## You just want to delete everything
    git rm name_of_file_to_delete

Once you picked the delete method commit your changes, and you're done deleting a file from your git repository.