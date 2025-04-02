---
title: "How to run IPFS using the systemd service on Linux Mint"
date: 2025-03-31T16:01:23-07:00
draft: false
---
# Introduction

I have been running IPFS from a terminal window using `ipfs daemon`. Now, I am setting up a systemd service to manage this automatically.

## Steps to run IPFS daemon as a systemd service on Linux Mint 21.x:

1. Create a systemd script file `/etc/systemd/system/ipfs.service` with the following content:

    ```ini
    [Unit]
    Description=IPFS daemon
    After=network.target

    [Service]
    ExecStart=/usr/local/bin/ipfs daemon
    User=<your_user>
    Restart=on-failure

    [Install]
    WantedBy=default.target
    ```
   
   [Get the file ipfs.service here](ipfs.service)

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

[Run IPFS on Boot (Ubuntu/Debian)](https://www.maxlaumeister.com/u/run-ipfs-on-boot-ubuntu-debian/)

[A SystemD Unit for IPFS](https://blog.bithive.space/post/a-systemd-unit-for-ipfs/)