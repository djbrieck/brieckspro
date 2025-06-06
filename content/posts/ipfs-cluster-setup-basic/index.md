---
title: "The missing IPFS Cluster Basic Setup guide"
date: 2025-05-12T15:54:18-07:00
draft: false
---

## Introduction

I initially thought [IPFS Cluster](https://ipfscluster.io/) was complicated after looking at the [Cluster Quickstart](https://ipfscluster.io/documentation/quickstart/). I didn’t even reach the Production deployment section, thinking it wasn’t necessary for development.

Setting up an [IPFS Cluster](https://ipfscluster.io/) has been long overdue. Managing 2-3 IPFS peers manually was tedious. After some research, including using [Microsoft Copilot](https://copilot.microsoft.com/shares/3Vh5dCWLdj3akT1szkvGm), I finally understood the process. Here’s a simple guide to get started without Docker or cloud services—just Linux.

## **Requirements for IPFS Cluster:**

1. Have a working local network that each peer is connected to.

2. **[IPFS](https://docs.ipfs.tech/install/command-line/)**: Ensure it’s installed and running as a systemd service.

3. **Install additional tools**: Download **ipfs-cluster-service** and **ipfs-cluster-ctl** to `/usr/local/bin` from [IPFS Cluster Download and Installation](https://ipfscluster.io/documentation/deployment/setup/).

4. **Initialize the cluster**: Run the following on each peer to generate cluster secrets:
    ```sh
    ipfs-cluster-service init
    ```

5. **Set a shared secret**: Choose a secret from one peer’s `service.json` and update the `cluster secret` value on all other peers to match.

6. **Start the cluster service**: Run the
    ```sh
    ipfs-cluster-service daemon
    ``` 
    or configure ipfs-cluster-service to run as a systemd service.

7. **Update your workflow**: Use [ipfs-cluster-ctl](https://ipfscluster.io/documentation/reference/ctl/) for pinning instead of the [ipfs](https://bafybeigomvp25jgkrb7s6xen2ii6zjmhsij2zaxpy3xm5ypt2fb3e3hny4.ipfs.dweb.link/reference/kubo/cli/#ipfs) command.

8. **Sync pins**: With the cluster set up, your IPFS pins added to the cluster will stay synchronized with minimal manual effort.

## Conclusion

This guide covers the basics to quickly set up an IPFS Cluster without Docker or cloud servers. You only need **ipfs**, **ipfs-cluster-service**, and **ipfs-cluster-ctl** installed locally, a good local network connection, and a **shared cluster secret** to get started.