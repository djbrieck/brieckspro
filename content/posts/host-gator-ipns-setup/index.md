---
title: "Host Gator Domain IPNS Setup"
date: 2022-01-25T06:12:44-08:00
draft: false
---

If you have a [domain](https://en.wikipedia.org/wiki/Domain_name) managed by [HostGator](https://www.hostgator.com/) and you want to use it to host your [ipns](https://docs.ipfs.io/concepts/ipns/) [pinned](https://docs.ipfs.io/how-to/pin-files/) website, then you can do it, but not without asking for help.

 You are going to need to contact [support at your HostGator billing login](https://portal.hostgator.com/login) to be able to set up the [DNSLink](https://docs.ipfs.io/concepts/dnslink/#dnslink), since changing the [CNAME](https://en.wikipedia.org/wiki/CNAME_record) and [TXT](https://en.wikipedia.org/wiki/TXT_record) entries is not possible, with no management interface provided by HostGator.

I have tried this process several times what actually work was contacting support and starting a chat.

Then I provided the following instructions to HostGator support

    1. Access your registrar's control panel. You're looking for where you can manage the CNAME record and TXT records for your domain.

    2. Create a CNAME record.
        a. Set the Host to @.
        b. Set the Value to gateway.ipfs.io. Notice the trailing dot . at the end of 	gateway.ipfs.io..

    3. Create a TXT record.
    a. Set the Host to _dnslink.
    b. Set the value to dnslink=/ipns/<Put your valid ipns address here>

    4. Save changes.
