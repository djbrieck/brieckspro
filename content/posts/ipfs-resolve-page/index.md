---
title: "IPFS / IPNS Local Resolver Page"
date: 2026-03-14T13:41:35-07:00
draft: false
---

Simple [IPFS](https://ipfs.tech/) resolver to use if your browser refuses to resolve ipfs://QmQQQcG2RTiHrdTvBGEwCUZh4uCQgN81XWiEKvSVBtxvLs 
addresses to your local IPFS instance. This saves you from having to build a url manually something like the following https://ipfs.io/ipfs/QmQQQcG2RTiHrdTvBGEwCUZh4uCQgN81XWiEKvSVBtxvLs


## Introduction of the problem

I was running into problems where [IPFS Companion](https://docs.ipfs.tech/install/ipfs-companion/) in my browser of choice was not consistently resolving an [ipfs://QmQQQcG2RTiHrdTvBGEwCUZh4uCQgN81XWiEKvSVBtxvLs](ipfs://QmQQQcG2RTiHrdTvBGEwCUZh4uCQgN81XWiEKvSVBtxvLs) url correctly. I was not sure if it was a temporary bug or an
existing feature that was going away, but I did not like the new outcome where the browser would do a web search 
instead of loading the content.

## The solution

So I had the idea of simple IPFS resolver page that would take input and then reformat it and do the url call to the 
locally running IPFS server.

I also wanted it to be "Smart" and be able to handle pasting of ipfs or ipns hashes as follows so I could just cut paste and load.

- `QmQQQcG2RTiHrdTvBGEwCUZh4uCQgN81XWiEKvSVBtxvLs`  ipfs example.
- `k51qzi5uqu5dhqkrs9rp0zup48eylg3uunpbzrshjs2kd2b6u2iuax74ktuk9f` ipns example.

I put about this detail into [Microsoft Copilot](https://copilot.microsoft.com/) and Copilot was able to help me implement this solution. See the source code below.

## Useage

1. Pin QmQQQcG2RTiHrdTvBGEwCUZh4uCQgN81XWiEKvSVBtxvLs or grab and save the source below to your computer and pin it your computer using IPFS. 
2. Load and bookmark the Resolver in your browser for use anytime you need to resolve any ipfs/ipns addressed. 
3. Paste you ipfs/ipns address and click the open button or press the enter key to load the content from IPFS.


## Live Example

[IPFS/IPNS URL Local Auto-Resolver](https://ipfs.io/ipfs/QmQQQcG2RTiHrdTvBGEwCUZh4uCQgN81XWiEKvSVBtxvLs)

## Source Code
Source as follows Built with MSFT Copilot 2/16/2026:

```
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IPFS/IPNS URL Local Auto-Resolver</title>
<style>
  body { font-family: sans-serif; max-width: 500px; margin: 40px auto; }
  label { display: block; margin-top: 20px; font-weight: bold; }
  input, button {
    width: 100%; padding: 10px; margin-top: 8px; font-size: 16px;
  }
  button { margin-top: 25px; cursor: pointer; }
</style>
</head>
<body>

<h1>IPFS/IPNS URL Local Auto-Resolver</h1>

<label for="cid">Paste CID, IPFS/IPNS name, or URL</label>
<input id="cid" type="text"
       placeholder="Paste anything: ipfs://bafy..., Qm..., k51..., dnslink, gateway URL..."
       onkeydown="if(event.key==='Enter') launch()">

<button onclick="launch()">Open</button>

<p>An IPFS node/instance must be running locally on port 8080 for this resolver to work. <a href="https://docs.ipfs.tech/install/" target="_blank">Install IPFS Desktop or Kubo</a> to get this working.</p>

<script>
function launch() {
  let input = document.getElementById("cid").value.trim();
  if (!input) {
    alert("Please paste a CID, IPNS name, or URL.");
    return;
  }

  // Normalize obvious ipfs/ipns prefixes
  input = input
    .replace(/^ipfs:\/\//i, "")
    .replace(/^ipns:\/\//i, "")
    .replace(/^ipfs\//i, "")
    .replace(/^ipns\//i, "");

  let root = "";
  let path = "";

  // 1. Subdomain gateway: https://<CID>.ipfs.<gateway>/path
  const subdomain = input.match(/^https?:\/\/([^\.]+)\.ipfs\.[^\/]+(\/.*)?$/i);
  if (subdomain) {
    root = subdomain[1];
    path = subdomain[2] || "";
  } else {
    // 2. Full URL with /ipfs/ or /ipns/ in the path
    const urlMatch = input.match(/^https?:\/\/[^\/]+\/(ipfs|ipns)\/([^?#]+)([?#].*)?$/i);
    if (urlMatch) {
      const proto = urlMatch[1].toLowerCase();
      const rest = urlMatch[2];
      const extra = urlMatch[3] || "";
      root = rest.split("/")[0];
      path = rest.substring(root.length) + extra;
      // We already know the type here, but we'll still run auto-detect below;
      // this just ensures root/path are clean.
      input = root + path;
    } else {
      // 3. Plain CID/name with optional path
      const match = input.match(/^([^\/]+)(\/.*)?$/);
      if (!match) {
        alert("Could not parse input.");
        return;
      }
      root = match[1];
      path = match[2] || "";
    }
  }

  const rootPart = root;

  // CIDv0 (Qm...) Base58btc
  const cidv0 = /^Qm[1-9A-HJ-NP-Za-km-z]{44}$/;

  // CIDv1 (bafy...) Base32
  const cidv1 = /^baf[0-9a-z]{10,}$/i;

  // IPNS keys (k51...) Base36-ish
  const ipnsKey = /^k51[0-9a-z]{10,}$/i;

  // DNSLink-style names (example.com, _dnslink.example.com)
  const dnslink = /^[a-z0-9._-]+\.[a-z]{2,}$/i;

  let type = null;

  // Auto-detect type
  if (cidv0.test(rootPart) || cidv1.test(rootPart)) {
    type = "ipfs";
  } else if (ipnsKey.test(rootPart) || dnslink.test(rootPart)) {
    type = "ipns";
  } else {
    const choice = confirm("Cannot auto-detect. Treat as IPFS? (Cancel = IPNS)");
    type = choice ? "ipfs" : "ipns";
  }

  const finalURL = "http://127.0.0.1:8080/" + type + "/" + rootPart + path;
  window.location.href = finalURL;
}
</script>

</body>
</html>
```