---
title: "The Landing Page Project"
date: 2024-05-06T06:42:06-07:00
draft: true
---

The landing page is a single page website dedicated to listing of all the sites you regularly visit sorted in order 
from most visited to least. 

## Does anyone still use bookmarks?

I do, and it has not really changed since the 1990s. Core problems are your bookmarks are limited to a drop-down menu 
or the bookmark toolbar or sidebar depending on your browser.

Just looking at the limited drop-down menu and folders to organize all and any bookmarks you want to keep, in general 
it's a lot of careful mousing and navigating to get where your going, no wonder googling has been the default to get 
there quick, and why the bookmarks toolbar and home buttons have been hidden by default in Chrome, Brave and other 
browsers.

I have been building a page for seeing bookmarks in a more full view as a side project for several years now. 
This full page view of all the websites you have saved sorted by most clicks at the top of the page.

![The Landing Page](LandingPageMockup.png)


Here is a proof of concept with sites I visit regularly.  If you would like to take a look at this live, try it now
[The Landing Page](https://ipfs.io/ipfs/bafybeiacqqyhof34mreni4sdf56nb6dgql24w34g3ovjm7t5ewpnd7ijku/).

# The Why

- This is something I came up with since I am tired of all my bookmarks I use 
just being in the limited space in the browser's toolbar.

-  And I was tired of forgetting about a ton of interesting stuff hidden in some random
bookmarks.

- Also was tired of having to rely on search engines to re-find things I already discovered.

- I was initially inspired by Opera's Speed 
Dial https://blogs.opera.com/news/2015/07/customize-operas-speed-dial/ and viewing a bookmarks export.html in the 
browser, which provides a nice handy list of your links when you try to view the file in a browser

The source code for where I am currently at is here https://github.com/djbrieck/landingPage/tree/landing-page-angular.

The planned general workflow for using:
1. Import your bookmarks.html, all get added into a giant list on the landing page
2. use the search to narrow down the results in your bookmarks
3. Find the link and click it, the webapp maintains in browser a click count for each bookmark. The landing page is 
sorted by most clicked bookmarks near the top, stuff rarely visited is at the bottom of the page.
4. When a match is not found it does a search and opens in a new tab your search results, where you can hopefully find 
what your looking for and then come back and add it later manually as needed.


Original Design

ipfs://bafybeigqbwl2qwlerb2nwde4uund43xggfwf5dzkm2e5ekyycmgzjcth44/

Angular first attempt static ipfs://bafybeibgq2zpgroyo6lu5bo6ri77o4455gzaqry4z3uzw2chkyal3kia3m/

Angular next attempt static ipfs://bafybeidnalp55sxv543jmzw5kml6akfa4lpy6iectq27tzimy5nhjnefri/

Angular update 10/8/2023 QmSqb5R7zQXvNk55tnqTyyioANq39djUQvd9fb8KtVE1TM

The next step is implementing a dynamic UI that renders the list via a angular service, so that I provide json, api, etc and it shows the list of bookmarks based on that

Next would be implement local storage

Add in adding of bookmarks

Add in edit bookmarks

Add  removing of bookmarks.

Add in import bookmarks

Add in export bookmarks


