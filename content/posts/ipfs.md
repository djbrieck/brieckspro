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
In recent times of censorship, I recalled IPFS and the projects goals of decentralization of the web. Noticing the the project is still around and that I no longer have a current website  anymore, and with how interesting things have become in recent months and years. I decided this was the perfect pathway forward to get a new  website going. I was particular interested in the decentralized and potential self hosting aspect enabled with IPFS. 

With using IPFS some interesting challenges are posed or to be considered:

-  Keep your site up and accessible all the time
-  Technical differences between using IPFS vs traditional web hosting.

## First trial

I have a domain [dijanarrow.com](https://gateway.ipfs.io/ipns/k51qzi5uqu5dgln1mo0wv5l9ws9enfgxrylye3iec8nyjgz1d3x08oq1c3o2ty) from my old business that I am currently hording. Now I am getting rid of it, however I have in the past 3 years or so let the hosting go, so all of my current pages are parked with trash from my domain name providers. So I wanted to put up a quick place holder page with info about how to buy the domain if someone was interested and ran across the domain.

## The technical challenges with IPNS

### Getting things to persist

Talk about the remote pinning service here...

### Figuring out how ipns works

Upon Setting up my new brieckspro domain I managed to get the same ipns and replaced the one I had initially setup for selling dijanarrow, ops. So now on to figure out how I did that one, since I would expect different address with vastly different content would have a different ipns to reference it, so color me baffled on that one.  As it turns out when you run the `ipfs name publish ...` you will get the same address back every time, I am guessing this is unique per instance, but to get a different one a `ipfs key gen someothername` must be ran first. And then you publish as follows `ipfs name publish --key=someothername ...` 
