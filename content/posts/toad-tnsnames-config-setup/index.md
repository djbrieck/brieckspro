---
title: "Toad for Oracle TNSNames Config an Setup"
date: 2022-04-04T06:31:58-07:00
draft: false
---

Moving from Oracle SQL Developer to Toad for Oracle, the first problem I ran into was figuring out where to place the TNSNames file or how to tell Toad where my current one was located. For the oracle app, you provide the directory path to where the file should be located.

Could not find a way to do this in the Toad program, so it must work differently and it does.

## Finding where the TNSNames file should be for Toad?

Toad requires a Oracle Client be installed and that is where your TNSNames.ora file must live as well. As part of the login window labeled something like 

 "Toad for Oracle Database Login Version ..." Find the Installed Clients section of the window, usually the lower right. Then find the drop down Connect Using: Make sure there is at least one listed and selected.

 Then click the button '...'

 In here you should look for ORACLE_HOME path, this will be where your oracle client is installed.

Should be something like the following: `C:\Oracle19Client\product\19.x.x\client_1`

The TNSNames.ora will likely be blank, and no hints on how to set it up if your looking for this for the first time, which means you have not provided one yet at the proper path its expecting.

### A proper path to place the TNSNames file is 
`C:\Oracle19Client\product\19.x.x\client_1\Network\Admin\tnsnames.ora`

If you don't have a tnsnames.ora file yet, Oracle usually provides a sample to get started with in the Admin folder within another folder labeled "sample". Make a copy of that new tnsnames.ora and or contact your Database administrator, to help you to get it right for the database/s you need to connected to. 

That is all and enough, good luck.