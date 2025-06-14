---
title: "How to run IPFS using the systemd service on Linux Mint"
date: 2025-06-13T16:17:58-07:00
draft: false
---
# Introduction

I have been running IPFS from a terminal window by manually typing the following command`ipfs daemon`. Now, I am setting up a systemd service to manage this automatically.

After this there is one more thing to decide to do and that is who do you want to run the ipfs daemon as, yourself , an ipfs user or someone else. For this article we are updating to run as an `ipfs` user as best practice to help isolate the ipfs user, process and files from your personal home directory. This is how ipfs cluster documentation suggest running as the ipfs user too. If you like the idea of moving to running as an ipfs user see [how to migrate from your current user to an ipfs user]({{<ref "posts/migrate-ipfs-to-run-as-ipfs-user/">}}).

 If you would like to continue running as yourself just update the file below replacing ipfs with your preferred username to run ipfs as:
``` 
User=ipfs
Group=ipfs
```

## Steps to run IPFS daemon as a systemd service on Linux Mint 21.x:

1. Create a systemd script file [/etc/systemd/system/ipfs.service](ipfs.service) with the following content:

```ini
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

2. Start the IPFS daemon:
    ```sh
    sudo systemctl start ipfs
    ```

3. Check the status of the IPFS daemon:
    ```sh
    systemctl status ipfs
    ```

   You should see something like this:
   <blockquote>
       
       $ systemctl status ipfs
       ● ipfs.service - IPFS daemon
       Loaded: loaded (/etc/systemd/system/ipfs.service; enabled; vendor preset: >)
       Active: active (running) since Wed 2023-08-16 07:24:35 PDT; 38min ago
       Main PID: 49516 (ipfs)
       Tasks: 25 (limit: 14171)
       Memory: 522.3M
       CPU: 19min 14.954s
       CGroup: /system.slice/ipfs.service
       └─49516 /usr/local/bin/ipfs daemon
   
       Aug 16 07:24:37 daniel-mp-dq ipfs[49516]: Swarm announcing /ip4/65.38.54.233/ud>
       Aug 16 07:24:37 daniel-mp-dq ipfs[49516]: Swarm announcing /ip4/65.38.54.233/ud>
       Aug 16 07:24:37 daniel-mp-dq ipfs[49516]: Swarm announcing /ip6/::1/tcp/4001
       Aug 16 07:24:37 daniel-mp-dq ipfs[49516]: Swarm announcing /ip6/::1/udp/4001/qu>
       Aug 16 07:24:37 daniel-mp-dq ipfs[49516]: Swarm announcing /ip6/::1/udp/4001/qu>
       Aug 16 07:24:37 daniel-mp-dq ipfs[49516]: Swarm announcing /ip6/::1/udp/4001/qu>
       Aug 16 07:24:37 daniel-mp-dq ipfs[49516]: RPC API server listening on /ip4/127.>
       Aug 16 07:24:37 daniel-mp-dq ipfs[49516]: WebUI: http://127.0.0.1:5001/webui
       Aug 16 07:24:37 daniel-mp-dq ipfs[49516]: Gateway server listening on /ip4/127.>
       Aug 16 07:24:37 daniel-mp-dq ipfs[49516]: Daemon is ready
       
   </blockquote>

4. Enable the daemon to start on boot:
    ```sh
    sudo systemctl enable ipfs
    ```

After running the above command, the IPFS daemon will start automatically on boot, ensuring your IPFS content remains available even after a restart.

## References

[IPFS Cluster Production Deployment Setup Documentation](https://ipfscluster.io/documentation/deployment/setup/)

[ipfs service template Github - hsanjuan](https://raw.githubusercontent.com/hsanjuan/ansible-ipfs-cluster/master/roles/ipfs/templates/etc/systemd/system/ipfs.service)

[Run IPFS on Boot (Ubuntu/Debian)](https://www.maxlaumeister.com/u/run-ipfs-on-boot-ubuntu-debian/)

[A SystemD Unit for IPFS](https://blog.bithive.space/post/a-systemd-unit-for-ipfs/)