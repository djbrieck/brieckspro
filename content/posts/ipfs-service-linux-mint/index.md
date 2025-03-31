---
title: "Ipfs Service Linux Mint"
date: 2025-03-31T16:01:23-07:00
draft: true
---

# Introduction

I have been running IPFS for years at this point from a terminal window where I just type in `ipfs daemon` finally I 
am setting up a service to manages this automatically.


## To run the IPFS daemon as a service on Linux Mint, you can use systemd. Here are the steps to set it up:

1. Create a systemd script file [ipfs.service](ipfs.service) using your favorite text editor at this location `/etc/systemd/system/ipfs.service`

The contents of the [ipfs.service](ipfs.service) file:

    [Unit]
    Description=IPFS daemon
    After=network.target
    
    [Service]
    ExecStart=/usr/local/bin/ipfs daemon
    User=<the user your are running ipfs from not root>
    Restart=on-failure
    
    [Install]
    WantedBy=default.target

## Start the ipfs daemon
	sudo systemctl start ipfs

## Check the status of ipfs daemon
	systemctl status ipfs

You should see something like this:

<blockquote>
    
    $ systemctl status ipfs
    ● ipfs.service - IPFS daemon
    Loaded: loaded (/etc/systemd/system/ipfs.service; enabled; vendor preset: >
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

This is looking good...

Lastly and most importantly if everything is looking good, enable the daemon to start on its own by running the following command:

    sudo systemctl enable ipfs

After running the above command successfully, the IPFS daemon will start automatically on boot.  You will not need to even login to your computer to start IPFS running.
This builds some resiliency into the system so that if my computer restarts my IPFS content including this website will still be available without me having to manually re-start it.

## References

[Run IPFS on Boot (Ubuntu/Debian) ](https://www.maxlaumeister.com/u/run-ipfs-on-boot-ubuntu-debian/)
[A SystemD Unit for IPFS](https://blog.bithive.space/post/a-systemd-unit-for-ipfs/)