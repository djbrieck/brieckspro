---
title: "How to make a link Qrcode Using Qrtool"
date: 2026-08-03T15:02:50-07:00
draft: true
---

## Backstory
I started using [QR code](https://en.wikipedia.org/wiki/QR_code) scanning tools on [Linux Mint](https://linuxmint.com/) 21.3 and found a utility [Qtqr - QR Tools - Launchpad](https://launchpad.net/qr-tools). However, Qtqr is no longer supported or developed since 2023. So when trying other operating systems like [NixOS](https://nixos.org/). I found there was very slim pickings for generating QR tools in a basic gui like the one Qtqr provided. 

## Solution qrtool

Finding an alternative was in order. So I found this terminal program called [qrtool](https://sorairolake.github.io/qrtool/book/index.html), this seems to get the job done without too much complexity to handle the use case I do most often, and that is generating a QR code from a website [URL](https://en.wikipedia.org/wiki/URL). 


Example that worked for generating a  QR code in png format for a provided URL.

```bash
qrtool encode "https://brieckspro.com" --output BriecksProURLQrCode.png
```

![qrtool generated QR code for https://brieckspro.com](BriecksProURLQrCode.png)