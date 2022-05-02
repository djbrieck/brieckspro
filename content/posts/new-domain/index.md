---
title: "New domain registrar, Domain.com"
date: 2022-05-02T16:18:42-07:00
draft: false
---
Moved over to Domain.com for my registrar. Since I was tired of not being able to do much of anything to and including updating my account address without needing to submit a ticket to HostGator support. So rather than deal with that process again and continue supporting a service thats a hassle all the time. I switched to [Domain.com](https://www.domain.com/) as a registrar. Based on some research and setting stuff up Domain.com is much better so far. 

And they give you enough freedom to mess it all up as well, which I have broken the site in the process of trying to re configure it to use IPFS. Mainly a lot of stuff that I did not think I needed.

First thing I did was clear out  all the set things, which was a mistake, please don't do that. Thankfully Domain.com support was able to reset all my DNS settings back to default and I was able to try again.

The main point is keep things as default and add the normal records as done before for setting up a IPFS/IPNS redirect, and thats all thats been needed thus far to get the basics of the site back up and running.

## Adding CNAME and TXT record to enable DNS link to your domain

    1. Access your registrar's control panel. You're looking for where you can manage the CNAME record and TXT records for your domain.

    2. Create a CNAME record.
        a. Set the Host to @.
        b. Set the Value to gateway.ipfs.io. Notice the trailing dot . at the end of 	gateway.ipfs.io..

    3. Create a TXT record.
    a. Set the Host to _dnslink.
    b. Set the value to dnslink=/ipns/<Put your valid ipns address here>

    4. Save changes.
