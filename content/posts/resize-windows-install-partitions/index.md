---
title: "Resize Windows Install Partitions"
date: 2024-09-23T07:32:29-07:00
draft: false
---

Fairly new to Windows as a full time os, had been running Macintosh hardware full time since 1996. I have done plenty of clean installations of windows onto new drives. This time I was upgrading from a 256GB SSD  to a 2TB SSD.

I wanted to figure out how to clone the drive and system exactly as I have it on the 256GB drive but expanded to fill the larger 2TB capacity SSD.

I found the Windows disk image tools and first did a back-up image which I copied to an external HDD.

Restoring this seems to be a hassle, boot from recovery and run through Windows installer and find the repair option. And once it's done it gives you the same partition and size as the original drive.

Next I look at windows Partition Manager program, which according to research should be able to handle this expanding of the partition size. However, due to the layout of the disk I did not have free space to the right of my C drive partition since that is where Windows 10 put my recovery partition, nice! So this tool would not work.

So I look for ways to copy from an existing system to a new hard drive, found several options all of which did nothing for me until I would pay $40 or more for a license, each of which promising a 30-day satisfaction. Not a fan of this, more of a fan of the try then pay later, but then again I can understand how these kind of tasks are more than likely a once every several years kind of action and I could see how they would never get paid for their tooling, but thankfully there is another way.

Prior to this I have been trying to install Linux on this laptop, but was running into issues getting a certain program to run, so I had to fall back and run with windows for a bit. Anyway I had a Debian 11 cinnamon live install image on a USB drive handy. So I jammed that in a USB port and rebooted from it. Upon boot up I searched for disk, and found the Disk Utility program very much like the one  I recall from macOS. It found my internal 256 GB SSD and I right-clicked the 256GB drive as listed and selected create image. 25 minutes later I had an image on my external hard drive.
drive.

With [Disk Utility](https://apps.gnome.org/DiskUtility/) I was able to get bootable mirror image that I could copy to the new larger SSD, however it too had the same limitations of not being able to resize the data partition since there was a recovery partition following it before getting to the unallocated space.

## Fixing the problem of expanding the 256GB partition to take the remaining of the 2TB ssd.

I used [GParted also known as GNOME Partition Editor](https://gparted.org/) from the bootable linux image to move the recovery partition and expand the primary data partition to the maximum of the new drive.





