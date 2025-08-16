---
title: "Booting From NVMe on Unsupported UEFI Bios, without modifying UEFI"
date: 2025-08-11T16:38:37-07:00
draft: false
---
This is a safer alternative to re-flashing a custom [UEFI](https://en.wikipedia.org/wiki/UEFI) [BIOS](https://en.wikipedia.org/wiki/BIOS) that adds in [NVMe](https://en.wikipedia.org/wiki/NVM_Express) support to be able to  boot from a modern NVMe drive.

I have confirmed that the modified Bootloader [rEFInd](https://en.wikipedia.org/wiki/REFInd) with an EFI NVMe [driver](https://en.wikipedia.org/wiki/Device_driver) added from [CloverBootloader](https://github.com/CloverHackyColor/CloverBootloader) works and enables NVMe
booting via an usb drive or other persistently connected device.

1. download latest https://sourceforge.net/projects/refind/files/ use files link.

2. Download the latest [refind-flashdrive.zip from SOURCEFORGE](https://sourceforge.net/projects/refind/files/) 

3. After extracting the zip file, locate the `refind-flashdrive-x.x.x.img`

4.  Insert a blank or flash drive since otherwise it's going to be over written next.

5. Make a bootable USB drive by copying `refind-flashdrive-x.x.x.img`  to the USB drive use something like [ balenaEtcher](https://etcher.balena.io/) or similar on your favorite operating system.

6. Mount the volume you just created, since it's only an EFI partition it may not auto mount, so you will probably need to open the [Disks](https://apps.gnome.org/DiskUtility/) program or similar, do not remove the drive.

7. Next you will need to switch to root write the file needed later. I used the "Open as Root" option in my [Nemo - File Manager](https://www.geeksforgeeks.org/linux-unix/10-best-file-managers-for-linux/) 

3. Download the latest [CloverBootloader.zip from GitHub](https://github.com/CloverHackyColor/CloverBootloader/releases/)

4. Extract / unzip the CloverBootloader.

5. Open the CloverV2 directory.

6. Locate the NVMe driver EFI file This should be located at a path like the following, I found it here in the `CloverV2-5163.zip` :

    `CloverV2/EFI/CLOVER/drivers/off/UEFI/Other`

	I found the file `NvmExpressDxe.efi` which is what I needed to get NVMe support / booting working. 

7. Next copy NvmExpressDxe.efi to the mounted rEFInd flash drive, opened as root user to the following location.
`...REFIND/EFI/boot/drivers_x64/NvmExpressDxe.efi`

8. Unmount the rEFInd drive.

9. Power off and remove the USB flash drive.

10. Test booting your PC with it, update the boot order to boot from the rEFInd USB drive first.

11. Then all the NVMe drives that you tried to set up and install and use for booting should show up for boot selection and allow successful booting.


## Conclusion
This was pretty easy and low risk compared to the possibility of bricking your PC should the custom UEFI update go wrong or be rejected by the motherboard. This solution is simple elegant and only has a few minor downsides.

Slightly longer boot up time as you wait for the USB and for eEFInd to count down to boot, not a problem for me since I rarely shut down my computers.

USB drive must stay in a port on the PC all the time.

## Original Source Files 
Also for the records here are all the files I used to create this, and I will provide an image backup of what is on the drive for others to reuse and as a backup.

[rEFInd flashdrive 0.14.2 - ZIP](refind-flashdrive-0.14.2.zip) sha256 checksum `85d4770940c6bf18c5e1b6326dfdf8fea2bb2726819de7249c48093e1532961f`

[CloverV2-5163 - ZIP](CloverV2-5163.zip) sha256 checksum `ce94acc2a03ef1f5b1d5ff0ea427cd5146dcb180dc39ca8471003558fc5d4589`

[rEFInd 0.14.2 With NVMe Booting EFI driver from CloverV2-5163 added - IMG](rEFIndWithNvmeBooting.img) sha256 checksum `bfacb5608fc5f5d74c5f240ca8b0df57c877ec92d821b5490933f00ac5602c7b`

# References

[The rEFInd Boot Manager: Getting rEFInd](https://www.rodsbooks.com/refind/getting.html)

[GitHub - CloverHackyColor/CloverBootloader: Bootloader for macOS, Windows and Linux in UEFI and in legacy mode](https://github.com/CloverHackyColor/CloverBootloader)

[uefi - How do I boot from an NVMe disk without bios support? - Unix &amp; Linux Stack Exchange](https://unix.stackexchange.com/questions/765738/how-do-i-boot-from-an-nvme-disk-without-bios-support)

[[HowTo] Get full NVMe Support for all Systems with an AMI UEFI BIOS - NVMe Support for old Systems - Win-Raid Forum](https://winraid.level1techs.com/t/howto-get-full-nvme-support-for-all-systems-with-an-ami-uefi-bios/30901)

