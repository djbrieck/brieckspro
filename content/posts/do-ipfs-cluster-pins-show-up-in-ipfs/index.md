---
title: "Do pins added via ipfs-cluster-ctl show up in the local ipfs instance too"
date: 2025-06-09T17:13:59-07:00
draft: true
---

## The question

Do things that I pin directly to the ipfs cluster show up in the local ipfs pin listing that the cluster manages? The opposite is not true, pins added locally are not automatically added to the ipfs cluster, so I wondered if the opposite was also true think only things in the cluster would show up in the cluster.

This is a question I can answer my self with an experiment.

## The Experiment 

I generated a simple test file and added it to the ipfs cluster.
```sh
touch testfile.txt
```
Edit and add some content using your favorite text editor. Then add the file to the ipfs cluster as follows.

```sh
ipfs-cluster-ctl add testfile.txt 
```

Test file is added and shows its hash as follows `QmTobBAY2B2i4EXwLaJocPPsPv5VYmp1zW9wy1ocjasPVp`

This hash shows up run I run the `ipfs-cluster-ctl status`

The above hash also does show up in when I run the local
```sh
ipfs pin ls --type=recursive
```

## Conclusion

So this does work as expected.  Pins you add with ipfs-cluster-ctl  will show up as pinned when running ipfs pin ls command, etc.

**WARNING**:
If it does not show up then you may have multiple ipfs file systems configured on your computer. For example, you are probably running your ipfs cluster as a different user. 