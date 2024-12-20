---
title: "Fix for: Verifying shim SBAT data failed: Security Policy Violation Something has gone seriously wrong: SBAT self-check failed: Security Policy Violation"
date: 2024-12-19T15:20:17-08:00
draft: true
---

Got error: an Sept 8 2024

Verifying shim SBAT data failed: Security Policy Violation Something has gone seriously wrong: SBAT self-check failed: Security Policy Violation

Held down f10 disabled secure boot from boot options
Disabled Secure boot. There may be many possible workarounds, but here is what I did that worked. I disabled secure boot and then noticed several days later Linux Mint 21.3 has some package updates mentioning a Microsoft signed shim patch. I installed that and then was able to reboot the system with secure boot enabled again, and all is well.

Search
https://search.brave.com/search?q=Verifying+shim+SBAT+data+failed%3A+Security+Policy+Violation+Something+has+gone+seriously+wrong%3A+SBAT+self-check+failed%3A+Security+Policy+Violation&source=desktop

maybe good source
https://forums.linuxmint.com/viewtopic.php?t=427297