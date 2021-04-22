---
title: "IPFS or InterPlanetary File System"
date: 2021-04-19T08:19:32-07:00
draft: false
---

## Summary 

Very interested in IPFS, so I building things with it, finally.

## Intro

I have been curious about [IPFS](https://ipfs.io/) since I first heard about it, many years ago, probably 2015 ish or so. Was very intrigued by reading about the project initially back then, but kind of left it at that level of interest. I think I may have installed the tools for experimenting, but I kind left it there, until 2021.


## Getting things going
In recent times of censorship, I recalled IPFS and the projects goals of decentralization of the internet. Noticing the the project is still around and that I no longer have current hosting, but do own some domain names.  I decided this was the perfect pathway forward to get a new  website going and put those domains to use. I was particular interested in the decentralized and potential self hosting aspect enabled with IPFS. 

With using IPFS some interesting challenges are posed or to be considered:

-  Keep your site up and accessible all the time
-  Technical differences between using IPFS vs traditional web hosting.

## First trial

I have a domain [dijanarrow.com](https://gateway.ipfs.io/ipns/k51qzi5uqu5dgln1mo0wv5l9ws9enfgxrylye3iec8nyjgz1d3x08oq1c3o2ty) from my old business that I am currently hording. Now I am getting rid of it, however I have in the past 3 years or so let the hosting go, so all of my current pages are parked with trash from my domain name providers. So I wanted to put up a quick place holder page with info about how to buy the domain if someone was interested and ran across the domain.

## The technical challenges with IPNS

Everything is different compared to regular hosting, so some surprises are upcoming.

### Getting things to persist, so that someone else can load your site

In my experience with IPFS it seems hosting just locally does not cut it, even with just my local instance up and running it seems to take quite a bit of time to get pages to load on the internet outside the IPFS companion.  Failure to load often is to be expected. So far with my own experimentation I have found a pinning service to be essential in making sure my site can load. Currently I am using [Pinata](https://pinata.cloud/) to keep things working. In the future I am strongly considering running some more of my own instances and figuring how to get that to work reliable. To make this pinning part work I found the the [CLI](https://www.w3schools.com/whatis/whatis_cli.asp) tools for IPFS essential. Using the Pinata UI to get a [IPNS](https://docs.ipfs.io/concepts/ipns/) working never seemed to work. As in Pinata could never find my local instance and get the file to pin.  Using the Pinata API and running `ipfs pin remote add /ipns/k51qzi5uqu5dhqkrs9rp0zup48eylg3uunpbzrshjs2kd2b6u2iuax74ktuk9f --service=pinata` and tis done and working very quickly.

### Figuring out how IPNS works

And we need IPNS since the IPFS address changes everytime you make a change to your site, so to get things going, I did not want to have to change the [URL](https://en.wikipedia.org/wiki/URL) everytime.

Upon Setting up my new brieckspro domain I managed to get the same IPNS and replaced the one I had initially setup for selling dijanarrow, ops. So now on to figure out how I did that one, since I would expect different address with vastly different content would have a different IPNS to reference it, so color me baffled on that one.  As it turns out when you run the `ipfs name publish ...` you will get the same address back every time, I am guessing this is unique per instance, but to get a different one a `ipfs key gen someothername` must be ran first. And then you publish as follows `ipfs name publish --key=someothername ...` 


### Getting your hosting domain to reference your IPNS and therefore IPFS hosted site.

I currently maintain ownership of the [brieckspro.com](https://www.brieckspro.com) and want this to be the domain that gets you to this site, since the following URL is pretty tough for me to remember. 

`https://gateway.ipfs.io/ipns/k51qzi5uqu5dhqkrs9rp0zup48eylg3uunpbzrshjs2kd2b6u2iuax74ktuk9f`
  

Currently this is a matter of setting some domain parameters values for `CNAME` and `TXT` records as indicated here  [IPFS Linking a Domain](https://docs.ipfs.io/how-to/websites-on-ipfs/link-a-domain/#domain-name-service-dns).

So far it was very easy to do my self on one domain hosted at GoDaddy, while the other one on HostGator requires support to intervene. So your results may very, I know I will be migrating off the one that requires support to make changes for me.

## Conclusion 

I am extremely happy with how this has been working so far, so I will continue to use IPFS, and will continue to learn more. Highly recommend checking out IPFS and building a site.
