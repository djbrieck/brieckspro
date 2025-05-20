---
title: "Run IPFS command as IPFS User when logged in as yourself on Linux Mint 21.x"
date: 2025-05-20T05:58:31-07:00
draft: true
---

How to run [ipfs]() commands  as the ipfs user rather than as your standard user role on Linux

## This is for your if your seeing something like the following when running `ipfs id`

1. Seeing that you should init ipfs when you have already set up the ipfs user to run the ipfs daemon for you.
   ``
   ipfs id
   Error: no IPFS repo found in /home/yourUserNameHere/.ipfs.
   please run: 'ipfs init'
   ``

**OR**

2. if you left your `/home/yourUserNamehere/.ipfs` data in place after moving to running ipfs as the ipfs user and are running into a situation when things are pinned in the ipfs-cluster but not showing up as pinned when running the ipfs command. If you did leave your data inplace migrate , backup or delete this as appropriate. 

## How to Run ipfs commands as the ipfs user while being yourself.
1. Backup your ipfs data if It's something you want to keep and delete your users .ipfs directory if you have not done so already. This is usually located here. `/home/yourUserNameHere/.ipfs`

2. Add your user in my case it was `daniel` to the group

   	sudo usermod -aG ipfs daniel

3. Apply new group setting to existing login session then logout / reboot to persist these settings as soon as possible.

   	newgrp ipfs

4. Fix permissions on the ipfs owned .ipfs dir so your user can access it as your user.

sudo chmod -R 770 /home/ipfs/.ipfs

5. Set a custom IPFS path in environment variables, add the following lines to your `~/.profile` and `~/.bashrc` file

# Set IPFS_PATH so ipfs commands will run as the ipfs user.
export IPFS_PATH=/home/ipfs/.ipfs


I did run as follows not sure if it was needed???
sudo chmod 644 /home/ipfs/.ipfs/config 


