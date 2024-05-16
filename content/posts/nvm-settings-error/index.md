---
title: "Nvm for Windows Settings.txt not found error"
date: 2024-05-16T06:41:22-07:00
draft: false
---
I started getting the following error when trying to run [nvm for windows](https://github.com/coreybutler/nvm-windows) 
on my work development system.

    NVM ERROR open \settings.txt: The system cannot find the file specified

The User variable `NVM_HOME` was removed from the system. NVM would not function at all without the 
above error. 

I found the following [ProgrammerAH - NVM ERROR open \settings.txt: The system cannot find the file specified](https://programmerah.com/nvm-error-open-settings-txt-the-system-cannot-find-the-file-specified-23738/)
solution. Now since I am [using NVM for windows without admin]({{<ref "posts/nvm-windows-running-with-no-admin/">}}) I am not needing the `NVM_SYMLINK`.

## A Fix re-add the NVM_HOME user variable

1. Open Start and search for "Environment"
2. Select the one named "Edit environment variables for your account"
3. Verify missing variable `NVM_HOME`
4. Click `New...`
5. Set the Variable name to `NVM_HOME`
6. Set the Variable value to `C:\where\you\installed\nvmDir`
7. Press `OK` to close the New User Variable window
8. Press `OK` again to save the changes and close the Environment Variables windows.
9. Re-open any programs / terminals where you were trying to run `nvm` and try again





