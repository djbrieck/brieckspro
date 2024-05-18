---
title: "Resize Windows Install Partitions"
date: 2024-05-18T07:32:29-07:00
draft: true
---

Fairly new to Windows as a full time os, had been running Macintosh hardware full time since 1996. I have done plenty of clean installs of windows onto new drives. This time I was upgrading from a 256GB SSD  to a 2TB SSD.

I wanted to figure out how to clone the drive and system exactly as I have it on the 256GB drive but expanded to fill the larger 2TB capacity.

I found the Windows disk image tools and first did a back up image which I copied to an external HDD.

Restoring this seems to be a hassle, boot from recovery and run through windows installer and to a repair option. And once its done it gives you the same partition and size as the original drive.

Next I look at windows Partition Manager program, which according to research should be able to handle this expanding of the partition size. However due to the layout of the disk I did not have free space to the right of my C drive partition since that is where windows 10 put my recovery partition, nice! So this tool would not work.

So I look for ways to copy from a existing system to a new hard drive, found several options all of which did nothing for me until I would pay $40 or more for a license, each of which promising a 30 day satisfaction. Not a fan of this, more of a fan of the try it then pay to unlock more, but then again these are more than likely a one time action and could see how they would want to get paid.

Prior to this I have been trying to install Linux on this laptop, but was running into issues getting a certain program to run so I had to fall back and run with windows for a bit. Anyways I had a Debian 11 cinnamon live install image on a USB drive handy. So I jammed that in a USB port and rebooted from it. Upon boot up I searched for disk, and found a Disk Utility like program. I found my internal 256 GB SSD and right clicked it selected create image. 25 minutes later I had an image on my external
drive.


With Disk utility was able to get bootable mirror image that I could copy to the new larger SSD, however it too had the same limitations of not being able to resize the data partion since there was a recovery partion following it before getting to the unallocated space.



Fixing the problem of expanding the 256GB partition to take the remaining of the 2TB ssd.

Used Gparted to move the recovery partition and expand the primary data partition to max of new drive.


