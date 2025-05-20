---
title: "Run IPFS Commands as IPFS User"
date: 2025-05-20T05:58:31-07:00
draft: true
---

How to run ipfs commands when ipfs is running under the ipfs user.

1. Make sure you remove  / backup the the .ipfs directory in your own home directory.  Since that will be out of sync and offline compared to what is running as the ipfs user using systemd and I do not want to maintain separate ipfs instances for every user on the system.

If you try to now run ifps id you will now see:
"
ipfs id
Error: no IPFS repo found in /home/daniel/.ipfs.
please run: 'ipfs init'
"

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


