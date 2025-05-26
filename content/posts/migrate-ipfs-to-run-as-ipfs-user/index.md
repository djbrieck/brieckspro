---
title: "How to migrate running ipfs from your user to the ipfs user and group"
date: 2025-05-20T20:01:14-07:00
draft: false
---

## Introduction

If you have set up an ipfs daemon to run as your standard linux user and would like to change to using a dedicated ipfs user, below are the steps to get that done. Here is how you move your ipfs data and systemd daemon to an IPFS user. This will isolate your data and home directory from the ipfs user and processes. 


## Making the IPFS user and moving your data and systemd process to run as the ipfs user.

1. **Create the ipfs user**
   ```sh
   sudo useradd -m -s /bin/bash ipfs
   ```

2. Stop the  IPFS service
   ```sh
   sudo systemctl stop ipfs
   ```

3. Move the IPFS data repository 
   ```sh
   sudo mv ~/.ipfs /home/ipfs/
   ```

4. Change ownership to ipfs user
   ```sh
   sudo chown -R ipfs:ipfs /home/ipfs/.ipfs
   ```

5. Switch to ipfs user
   ```sh
   sudo su - ipfs
   ```

6. Start ipfs daemon as the ipfs user to make sure it works
   ```sh
   ipfs daemon
   ```

7. Stop the daemon
   Press <kbd>Control</kbd> - <kbd>c</kbd> on the keyboard.

8. exit running as ipfs user
   ```sh
   exit
   ```

8. Disable the ipfs systemd service that was set up to run as yourself. 
   ```sh
   sudo systemctl disable ipfs
   ```

9. Update the [ipfs.service](ipfs.service) systemd file to the ipfs user version as follows. This file is usually located here `/etc/systemd/system/ipfs.service`

```systemd
[Unit]
Description=IPFS daemon
After=network.target

[Service]
Type=notify
User=ipfs
Group=ipfs
StateDirectory=ipfs
TimeoutStartSec=10800
MemorySwapMax=0
ExecStart=/usr/local/bin/ipfs daemon

Restart=on-failure
KillSignal=SIGINT

[Install]
WantedBy=multi-user.target
```

10. Re-enable the ipfs service
   ```sh
   sudo systemctl enable ipfs
   ```

11. Restart the ipfs service now running as the ipfs user
   ```sh
   sudo systemctl start ipfs
   ```

## Conclusion 

After running the above steps you should now have ipfs running as the ipfs user with your migrated data. To prepare for working with IPFS as your existing user see [Run IPFS commands as IPFS User when logged in as yourself on Linux Mint 21.x]({{<ref "posts/run-ipfs-commands-as-ipfs-user/">}}) 

## Resources

[IPFS Cluster Download and installation](https://ipfscluster.io/documentation/deployment/setup/)

[ipfs.service - hsanjuan - GitHub User Content](https://raw.githubusercontent.com/hsanjuan/ansible-ipfs-cluster/master/roles/ipfs/templates/etc/systemd/system/ipfs.service)