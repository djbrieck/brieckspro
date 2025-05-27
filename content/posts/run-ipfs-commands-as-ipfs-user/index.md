---
title: "Run IPFS commands as IPFS User when logged in as yourself on Linux Mint 21.x"
date: 2025-05-20T05:58:31-07:00
draft: false
---

## Introduction

How to run [ipfs](https://docs.ipfs.tech/reference/kubo/cli/#ipfs) commands  as the ipfs user rather than as your standard user role on Linux

## This is for your if your seeing something like the following when running `ipfs id`

- Seeing that you should init ipfs when you have already set up the ipfs user to run the ipfs daemon for you means should move on to the next section and don't run the init.
   ``
   ipfs id
   Error: no IPFS repo found in /home/yourUserNameHere/.ipfs.
   please run: 'ipfs init'
   ``

**OR**

- If you left your `/home/yourUserNamehere/.ipfs` data in place after moving to running ipfs as the ipfs user and are running into a situation when things are in the ipfs-cluster but not showing up when running the ipfs command as yourself. If you did leave your data inplace migrate, backup or delete it as appropriate, then move on to the next section. 

## How to Run ipfs commands as the ipfs user while being yourself.
1. Add your user in my case it was `daniel` to the group
```sh
sudo usermod -aG ipfs daniel
```

2. Apply new group setting to existing login session then logout / reboot to persist these settings as soon as possible.
```sh
newgrp ipfs
```

3. Fix permissions on the ipfs owned .ipfs dir so your user can access it as your user.
```sh
sudo chmod -R 770 /home/ipfs/.ipfs
```
4. Set a custom IPFS path in environment variables, add the following lines to your `~/.bashrc` file etc.

```sh
# Set IPFS_PATH so ipfs commands will run as the ipfs user.
export IPFS_PATH=/home/ipfs/.ipfs
```

## Conclusion 

Now when ipfs commands are run you should have full and up-to-date information as processed in your ipfs-cluster.