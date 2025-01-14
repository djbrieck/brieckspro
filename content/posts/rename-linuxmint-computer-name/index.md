---
title: "How to rename a Linux Mint Computer?"
date: 2025-01-13T13:41:20-08:00
draft: false
---

## Problem

If for one reason or another the name of your Linux computer needs to change, this may be the right place.

To rename your Linux Mint 21.x + computer typically you should change the host-name to accomplish this.

To verify this is the name you want to change open a terminal and run the following command.

	hostname

If this is the name you are wanting to change then please proceed to the solution presented below.

## Solution

To change the hostname  run the following command, replacing `newnaame` with the name your would like to call your computer.

	hostnamectl set-hostname 'newname'

Run hostname command once more to confirm your computer name has been updated correctly.

Also, you may want to re-open terminal windows, restart services  or possibly just restart the computer so all things get the new host-name update as expected.

- Tested working on Linux Mint 21.3 Cinnamon Edition

## Reference

[[Solved] How do you change computer's name?](https://forums.linuxmint.com/viewtopic.php?t=318932)

[Linux Mint](https://linuxmint.com/)