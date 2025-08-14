---
title: "Booting From NVMe on Unsupported UEFI Bios, without modifying UEFI"
date: 2025-08-11T16:38:37-07:00
draft: true
---
This is a safer alternative to re-flashing a custom [UEFI](https://en.wikipedia.org/wiki/UEFI) [BIOS](https://en.wikipedia.org/wiki/BIOS) that adds in [NVMe](https://en.wikipedia.org/wiki/NVM_Express) support to be able to  boot from a modern NVMe drive.

I have confirmed that the modified Bootloader [rEFInd](https://en.wikipedia.org/wiki/REFInd) with an EFI NVMe [driver](https://en.wikipedia.org/wiki/Device_driver) added from [CloverBootloader](https://github.com/CloverHackyColor/CloverBootloader) works and enables NVMe
booting via a usb drive or other persistently connected device.

1. download latest https://sourceforge.net/projects/refind/files/ use files link.

2. Downlaod the latest refind-flashdrive.zip

3. After extracting the zip file, locate the `refind-flashdrive-x.x.x.img`

4.  Insert a blank or flash drive with nothing important on it, other wise its going to be over written next.

5. Make a bootable USB drive by copying `refind-flashdrive-x.x.x.img`  to the USB drive use something like [ balenaEtcher](https://etcher.balena.io/) or similar on your favorite operating system.

6. Mount the volume you just created, since its only a EFI partition it may not auto mount, so you will probably need to open the Disks program or similar, do not remove the drive, you will likely need to switch to root to do the write.

3. Download the latest CloverBootloader.zip https://github.com/CloverHackyColor/CloverBootloader/releases/

4. Extract / unzip the CloverBootload

5. Open the CloverV2 directory.

6. Locate the nvm drviers EFI file This should be located at a path like the following:

`CloverV2/EFI/CLOVER/drivers/off/UEFI/Other`

	I found the `NvmExpressDxe.efi` at that location that is the file we needed. 

7. Copy NvmExpressDxe.efi to the flash drive on Refind to the following location.

`...REFIND/EFI/boot/drivers_x64/NvmExpressDxe.efi`

8. Unmount the Refind mount.

9. Power off and remove the USB flash drive now.

10. Test booting your PC with it, update the boot order to boot from the Refind USB drive first.

11. Then all the nvme drives that you tried to set up and install and use for booting should show up for boot selection and allow successful booting.


## Conclusion
This was pretty easy and low risk compared to the possibility of bricking your PC should the custom bios update go wrong or be rejected by the motherboard. This solution is simple elegant and only has a few downsides.

Slithly longer boot up time as you wait for the USB and for REfind to count down to boot.

USB drive must stay in a port on the PC all the time

Kind of a waste of a USB drive, but not too bad..

# References

https://www.rodsbooks.com/refind/getting.html

https://unix.stackexchange.com/questions/765738/how-do-i-boot-from-an-nvme-disk-without-bios-support

https://winraid.level1techs.com/t/howto-get-full-nvme-support-for-all-systems-with-an-ami-uefi-bios/30901

