---
title: "How run Node Version Manager NVM for Windows without admin rights"
date: 2024-05-13T08:52:24-07:00
draft: false
---

Possible Alternative solution for [Stack Overflow - How to install node version manager without Admin](https://stackoverflow.com/questions/52208160/how-to-install-node-version-managernvm-without-admin-rights)

The Short answer is [NVM For Windows](https://github.com/coreybutler/nvm-windows) can't be installed without admin 
privileges, yet. However, you can manually use it and change node versions manually without needing admin again nor 
having to manually manage installing various versions of Node.js using the Node.js Windows installer ever again.

My solution is ask your local admin to install nvm for Windows for you and additionally to install it in a not 
locked-down folder path on the C drive, something like `C:\nvm` worked for me.

Then make the following changes yourself after the admin user has completed the installation of NVM.

1. Remove under your Environment Variables in windows the  `NVM_SYMLINK` that points to `C:\Program Files\nodejs`   
2. This is the thing you will need admin to set so let's not even use it.

3. Keep the NVM_HOME environment variable; this will point to the directory where nvm is installed on your system, 
without it, nvm may not even work.

5. Install Node.js or see if Node.js is already installed by running `nvm list`
    
    nvm install lts #Or install exactly what you need to run directly. 

5. Add `C:\nvm` or where you installed to your users Path in Windows environment variables.

6. Add something like `C:\nvm\vx.y.z` to the Path in your users Environment Variables.  (Replace x.y.z with the version of node you are wanting to use)

7. Open and close any programs / terminals and now when you run `nvm list` you will see x.y.z  is currently selected and the default.

8. Now you can download any node you want that's in nvm and manually use it yourself without having to wait for 
an admin for every change of Node.js version you may need. 

## Adding and using multiple versions of Node.js: 
1. Run the nvm install command for the version you need to install. 
2. Note that all the fancy commands like nvm use x.y.z will not set x.y.z as the current default, since we can't use NVM_SYMLINK yet without having admin.
3. Update the Windows path environment variable to the specific version of Node.js you need and restart any open 
terminals to get the set version (ONly set one version of Node.js on the path at a time)



 
