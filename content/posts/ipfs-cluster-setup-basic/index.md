---
title: "The missing IPFS Cluster Basic Setup introduction"
date: 2025-05-12T15:54:18-07:00
draft: false
---

## Introduction

I was confused into thinking [IPFS Cluster](https://ipfscluster.io/) was more compilated to get start by looking at this [Cluster Quickstart](https://ipfscluster.io/documentation/quickstart/) honestly never made it to the Production deployment section since I did not feel like I need that yet, since I thought I am doing development not production yet. 

Anyway, I have been needing to set up a [IPFS Cluster](https://ipfscluster.io/) for a long time.  It has been a lot of work manually managing stuff between 2-3 ipfs peers. I even threw this question to [Microsoft Copilot 'how to setup ipfs cluster outside of the cloud'](https://copilot.microsoft.com/shares/3Vh5dCWLdj3akT1szkvGm) which helped me get a clue, and then I was able to go back and read all the documentation, yep it's that simple, so anyway here is a simple getting started guide that does not need docker or anything other than your computer running some kind of Linux.

## **Stuff needed to run an IPFS Cluster:**

1. ipfs, already have it installed and running as systemd service.

2. I need to install two more programs to `/usr/local/bin` **ipfs-cluster-service** and **ipfs-cluster-ctl** .

   All of which is available at [IPFS Cluster Download and installation](https://ipfscluster.io/documentation/deployment/setup/)

3. Initialize the cluster service on each peer, this will generate cluster secrets:
    ``
    ipfs-cluster-service init
    ``

4. Simple pick a secret from one of the init commands on one of the peers and edit each other nodes `service.json` cluster secret value to match between all the peers in your cluster.

5. Start and run the `ipfs-cluster-service daemon` like so or set it up to run as another systemd service.

6. Update  workflow to add/pin using [ipfs-cluster-ctl](https://ipfscluster.io/documentation/reference/ctl/) instead of the [ipfs](https://bafybeigomvp25jgkrb7s6xen2ii6zjmhsij2zaxpy3xm5ypt2fb3e3hny4.ipfs.dweb.link/reference/kubo/cli/#ipfs) command.

7. And now with that you can keep your ipfs pins in sync with a lot less manual work.

## Conclusion 
This is the bare minimum you need to set up a cluster, and you can get it going pretty quick no need to involve docker or cloud servers yet, just the right software: **ipfs, ipfs-cluster-service, and ipfs-cluster-ctl** needs to be installed locally, a good network connection and a **shared cluster secret** is all that is needed to get it running.

