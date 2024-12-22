---
title: "Fix for: Verifying shim SBAT data failed: Security Policy Violation Something has gone seriously wrong: SBAT self-check failed: Security Policy Violation"
date: 2024-12-19T15:20:17-08:00
draft: true
---

## Introduction 

After some recent updates where installed by Microsoft for Windows 11 Pro, this is what happened when my laptop rebooted with Linux Mint 21.x installed with Windows.

Effectively Linux Mint was no longer considered trusted and the laptop refused to boot from Linux or anything. The system would show the follow error and then immediately power off.

First got the error on Sept 8 2024.

Verifying shim SBAT data failed: Security Policy Violation Something has gone seriously wrong: SBAT self-check failed: Security Policy Violation

## The temporary work around

Held down f10 disabled secure boot from boot options
Disabled Secure boot. There may be many possible workarounds, but here is what I did that worked. 


## The fix 

Since I disabled secure boot I paid close attention to all the updates descriptions that were for Linux Mint 21.3. Soon after I noticed one updated package description has some wording mentioning a Microsoft signed shim patch. I installed that and then was able to reboot the system with secure boot enabled again, and all was well again and "secure".

Search
https://search.brave.com/search?q=Verifying+shim+SBAT+data+failed%3A+Security+Policy+Violation+Something+has+gone+seriously+wrong%3A+SBAT+self-check+failed%3A+Security+Policy+Violation&source=desktop

maybe good source
https://forums.linuxmint.com/viewtopic.php?t=427297