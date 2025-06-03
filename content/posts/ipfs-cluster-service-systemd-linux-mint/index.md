---
title: "How to start and run ipfs-cluster-service daemon on Linux Mint using systemd"
date: 2025-06-03T15:20:37-07:00
draft: true
---

1. First setup [ipfs to run as service]({{< ref "posts/ipfs-service-linux-mint/">}}) if you have not done so already. 

2. Set up an [ipfs user to run ipfs things as](http://localhost:1313/posts/migrate-ipfs-to-run-as-ipfs-user/) or run as yourself less secure, update the User name in the .service file to your user you run the ipfs-cluster daemon as yourself.

3. Create a systemd script file [/etc/systemd/system/ipfs-cluster.service](ipfs-cluster.service) with the following content:

```sh
[Unit]
Description=IPFS Cluster Service
After=network.target
Requires=ipfs.service

[Service]
ExecStart=/usr/local/bin/ipfs-cluster-service daemon
Restart=on-failure
User=ipfs

[Install]
WantedBy=multi-user.target
```


4. Test run  starting the ipfs-cluster-service using the service command.
```
   sudo systemctl start ipfs-cluster
```

5. View the status 
```
systemctl status ipfs-cluster
```

 The output should look somthing like the following when running successfully.

```
● ipfs-cluster.service - IPFS Cluster Service
Loaded: loaded (/etc/systemd/system/ipfs-cluster.service; disabled; vendor preset: enabled)
Active: active (running) since Mon 2025-05-12 14:19:16 PDT; 33s ago
Main PID: 785789 (ipfs-cluster-se)
Tasks: 13 (limit: 18839)
Memory: 13.4M
CPU: 182ms
CGroup: /system.slice/ipfs-cluster.service
└─785789 /usr/local/bin/ipfs-cluster-service daemon
```

6. Enable the service if all is looking good above.
```sh
   sudo systemctl enable ipfs-cluster
```

