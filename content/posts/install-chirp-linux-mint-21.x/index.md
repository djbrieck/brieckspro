---
title: "How to Install Chirp on Linux Mint 21/22"
date: 2025-09-05T16:12:23-07:00
draft: true
---

## Introduction 
This is a brief guide on how to install [CHIRP](https://chirpmyradio.com/projects/chirp/wiki/Home) on Linux Mint 21.x / 22.x, since there is a lot going on with chirp and with following the current instructions results in errors so in short this is what worked for me the last time I tried to install CHIRP.

## Installation with Errors

1. Start with visiting [CHIRP Downloads page](https://chirpmyradio.com/projects/chirp/wiki/Download)
2. For Linux Mint 21.x / 22.x the correct variant of CHIRP is CHIRP-next, find the download link on the above-mentioned downloads page. 
3. For Linux the file to download is named `chirp-YYYYMMDD-py3-none-any.whl` you may need to right-click and select "Save link as..." option to start the file download otherwise you may see the browser try and load the file / render it.
4. 



1987  sudo apt install python3-wxgtk4.0 pipx
1988  pipx install --system-site-packages ./chirp-20250822-py3-none-any.whl
1989  sha1sum chirp-20250822-py3-none-any.whl

1990  gvim /home/daniel/.local/pipx/logs/cmd_2025-08-27_10.29.16_pip_errors.log

1995  sudo  apt-get install python3-yattag
1996  pipx install --system-site-packages ./chirp-20250822-py3-none-any.whl
1997  chirp

When first opened allow chrip to create the desktop / program shortcut so it will have a launcher
