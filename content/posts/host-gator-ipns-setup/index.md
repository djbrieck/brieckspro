---
title: "Host Gator Domain IPNS Setup"
date: 2022-01-25T06:12:44-08:00
draft: false
---

If you have a [domain](https://en.wikipedia.org/wiki/Domain_name) managed by [HostGator](https://www.hostgator.com/) and you want to use it to host your [ipns](https://docs.ipfs.io/concepts/ipns/) [pinned](https://docs.ipfs.io/how-to/pin-files/) website, then you can do it, but not without asking for help.

 You are going to need to contact [support at your HostGator billing login](https://portal.hostgator.com/login) to be able to set up the [DNSLink](https://docs.ipfs.io/concepts/dnslink/#dnslink), since changing the [CNAME](https://en.wikipedia.org/wiki/CNAME_record) and [TXT](https://en.wikipedia.org/wiki/TXT_record) entries is not possible, since no management interface is provided by HostGator when your not using their hosting.

I have tried this process several times and here is what actually worked. 

## The fix

1. I logged into HostGator support page
2. Start a support chat
3. Provide the following instructions below, but modified with your ipns address that you would like to reference.
4. Then wait for a few hours
5. Test by visiting your domain, when you see your expected IPNS content, your done. Otherwise keep contacting HostGator support until they get it right. 

## Instructions to send to HostGator support via chat

    1. Access your registrar's control panel. You're looking for where you can manage the CNAME record and TXT records for your domain.

    2. Create a CNAME record.
        a. Set the Host to @.
        b. Set the Value to gateway.ipfs.io. Notice the trailing dot . at the end of 	gateway.ipfs.io..

    3. Create a TXT record.
    a. Set the Host to _dnslink.
    b. Set the value to dnslink=/ipns/<Put your valid ipns address here>

    4. Save changes.
