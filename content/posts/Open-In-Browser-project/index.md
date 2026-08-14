---
title: "OpenInBrowser – One link for all browsers"
date: 2026-08-14T15:54:17-07:00
draft: true
tags: [open-source, ipfs, desktop-scheme, browser-launcher]
summary: "A single IPFS‑hosted page that lets you open any URL in a specific browser via a `browseropen://` URI scheme—no more per‑browser bookmarks."
---

# OpenInBrowser – One link for all browsers

> *“Why keep separate bookmarks for Chrome, Firefox, and Safari? Let’s just make one link that does it all.”*

I’ve been there as [Brave Browser](https://brave.com/) user. Any time I want to watch a video on Netflix or watch a training video on Udemy or watch something on Disney+. I end up have to recall which browser each of those works with. This required me to manage three different sets bookmarks in each browser, and then remember to go open that browser and start the watching process. This OpenInBrowser allows me to put all my bookmarks in the browser I use everyday all day and then leave it up to this program to manage open the correct browser for pages that need a specific browser to function correctly. 

Enter **[OpenInBrowser](https://github.com/yourusername/open-in-browser)** – a tiny open‑source project that turns any URL into a *single* clickable link which forces a specific browser to open it. No more juggling bookmarks; no more “which browser is this?” confusion.

---

## The problem

- **Multiple browsers** → multiple bookmark sets
- **Link sharing** → other people can’t see which browser should open it

All because the web assumes a single “default” browser.

---

## How OpenInBrowser solves it

1. **A universal link** – Every URL is wrapped in a `browseropen://…` URI that carries both the target address and the desired browser name (`chrome`, `firefox`, etc.).
2. **Static IPFS page** – The redirect page lives on IPFS, so it stays unchanged no matter how many times you generate links.
3. **Desktop‑scheme handling** – Linux’s MIME system maps `browseropen://` to a custom `.desktop` entry that runs a tiny script:
   ```bash
   browseropen://firefox/https://example.com → firefox https://example.com
