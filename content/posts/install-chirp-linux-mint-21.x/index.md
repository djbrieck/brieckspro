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
3. For Linux the file to download is named `chirp-YYYYMMDD-py3-none-any.whl` you may need to right-click and select "Save link as..." option to start the file download otherwise you may see the browser try and load the binary file right in the browser window if you click the link as named.

4. While here click the SHA1SUM link by clicking on the link.  When the `.whl` finishes download run the following command and make sure that the has the sha1sum command outputs matches the one listed next to the `.whl` file in the SHA1SUM file.

```
sha1sum chirp-20250822-py3-none-any.whl
```

5. Since we are trying to install for Linux find the [details here link](https://chirpmyradio.com/projects/chirp/wiki/ChirpOnLinux) back on the [CHRIP Downloads Page](https://chirpmyradio.com/projects/chirp/wiki/Download#)

6. For Linux Mint run to install what is needed
```
sudo apt install python3-wxgtk4.0 pipx
```

7. Install CHIRP from the latest `.whl` file that was downloaded above 

```
pipx install --system-site-packages ./chirp-20250822-py3-none-any.whl
```

8. At this point I got an error something about "yattag package may not be installable in pipx" after taking a look at the [Troubleshooting](https://chirpmyradio.com/projects/chirp/wiki/ChirpOnLinux#Troubleshooting) I was able to find the command to fix my issue that I was seeing. 

```
sudo  apt-get install python3-yattag
```
9. Then I re-ran the following successfully this time.

```
pipx install --system-site-packages ./chirp-20250822-py3-none-any.whl
```

10. Then I was able to run the chirp command 

```chirp```

11. When first opened allow CHIRP to create the desktop / program shortcut so it will have a launcher icon that you can search for and pin to be able to start CHIRP without using the terminal each time.


# Conclusion 

CHIRP was not too difficult to install, but it did take a lot of jumping around and reading all the fine print to get it all sorted and successfully installed, hopefully these Notes for Linux Mint will be helpful to get you through it faster.
