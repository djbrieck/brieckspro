---
title: "How to get a hash for a file on Windows 10 + ?"
date: 2025-05-07T15:14:42-07:00
draft: false
---

If you downloaded something, and you want to verify that it has not been corrupted using hashing, it's a little 
different on how to do this on Windows.  Sorry no `md5` or `sha...` shortcut commands at least not by default.
 
Here is how to get a SHA1 SHA256  SHA384  SHA512 MACTripleDES
MD5 or RIPEMD160 hash of a file on Windows 10, 11. 

## Open Windows PowerShell and type the follow command.

    Get-FileHash .\fileYouWantAHashFor

Output will be as follows:
    
    Algorithm       Hash                                                                   Path
    ---------       ----                                                                   ----
    SHA256          F1BDF1C4C8E83DA4511A3D310A91609B707DD1E64ECEA08017C7C4A4AE001F0A       C:\Users\Da...


The default is SHA256, if you need something specific see below help or run 
`help Get-FileHash` for what is actually supported on your current Windows system.

## UPPER CASE HASHING RESULTS NO EXTRA CHARGE
Also notice results are provided in ALL CAPS which in 
general is less than ideal since you can't use the copy and paste and find trick in your browser to verify directly, 
since most Linux, Unix , or even Macs provide hash results in lowercase in my experience. So Verify manually by 
eyeballing it or convert to lower case using something like [vim to quickly convert text to lowercase]({{<ref "posts/vim-case-conversion/index">}}) or have PowerShell do the conversion for you as follows below.

### PowerShell convert string to lower case

1. Copy the file hash for example, `F1BDF1C4C8E83DA4511A3D310A91609B707DD1E64ECEA08017C7C4A4AE001F0A` as provided by Get-FileHash, you can left double-click on the hash to highlight it, then right click with the mouse to copy to the clipboard.

2. Paste in a PowerShell prompt, by right clicking at the input cursor.
3.  Edit the hash by adding single quotes at the start and the end of the hash

4. Next add .toLower() following the quoted hash string, should look like the following:

`'F1BDF1C4C8E83DA4511A3D310A91609B707DD1E64ECEA08017C7C4A4AE001F0A'.ToLower()`

5. Press enter once you have your hash and conversion edited  

6. PowerShell will now print the lowercase version to the string to the screen for use as needed. 

## Get-FileHash help page example

For Windows 10 looked something like this, if these are not working  `help Get-FileHash` to get help on how to use 
Get-FileHash on your Windows system

    NAME
    Get-FileHash
    
    SYNTAX
    Get-FileHash [-Path] <string[]> [-Algorithm {SHA1 | SHA256 | SHA384 | SHA512 | MACTripleDES |
    MD5 | RIPEMD160}]  [<CommonParameters>]

        Get-FileHash -LiteralPath <string[]> [-Algorithm {SHA1 | SHA256 | SHA384 | SHA512 | MACTripleDES
        | MD5 | RIPEMD160}]  [<CommonParameters>]

        Get-FileHash -InputStream <Stream> [-Algorithm {SHA1 | SHA256 | SHA384 | SHA512 | MACTripleDES |
        MD5 | RIPEMD160}]  [<CommonParameters>]
    ...


Give all that If you wanted a MD5 checksum for a file the options would look like

    Get-FileHash C:\path\to\file -Algorithm MD5

