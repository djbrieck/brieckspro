---
title: "How to migrate running ipfs from your user to the ipfs user and group"
date: 2025-05-20T20:01:14-07:00
draft: true
---



1. Create the ipfs user

   	sudo useradd -m -s /bin/bash ipfs

2. Stop ipfs
   sudo systemctl stop ipfs

3. Move the IPFS repo from me to the new ipfs user
   sudo mv ~/.ipfs /home/ipfs/

4. Change owner to ipfs user
   sudo chown -R ipfs:ipfs /home/ipfs/.ipfs

5. Switch to ipfs user
   sudo su - ipfs

6. Start ipfs daemon as the ipfs user to make sure it works

   ipfs daemon

7. Stop the daemon
   Press Control - c on the keyboard.

8. exit running as ipfs user
   exit

8. Disable ipfs
   sudo systemctl disable ipfs

9. Update the systemd file for ipfs with the ipfs user version

# Update the script to use the ipfs user
https://raw.githubusercontent.com/hsanjuan/ansible-ipfs-cluster/master/roles/ipfs/templates/etc/systemd/system/ipfs.service

10. Re enable the ipfs service
    sudo systemctl enable ipfs

11. Restart the ipfs service now running as the ipfs user

    	sudo systemctl start ipfs

