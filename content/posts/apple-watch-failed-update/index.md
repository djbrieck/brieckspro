---
title: "Apple watchOS 8.5.1 update fails  on Apple Watch Series 4"
date: 2022-07-22T18:34:35-07:00
draft: true
---

## Introduction

My lovely wife Darcy was telling me that her Apple Watch (model A1977) was having problems updating, so I check it out to see whats going on.


## Troubleshooting 
I attempt to manually run the  failing install on the watch and nothing ever seems to happen, every-time I go back into setting for the Software Update on the watch, its basically a fresh start all over, with no error message displayed for me trying to figure out what to fix or even what is going wrong.

Only on the phone that is paired and in the Watch app do you get a hint of a problem, pretty terrible.

Update fails and displays an extremely vague error message when the update fails when we probably have a specific problem a lack of free storage space to successfully install the software update. Below is how I come to that conclusion.

## More toubleshooting and finding the cause of the failed update, the storage is full

Noticed that the device was failing to install, and showing on the Apple Watch app an error message with the following:

        "Unable to Install Update, An error occurred installing the latest version of watchOS on your Apple Watch"

 Thank you not Apple, for an extremely un helpful error message.

So I do a little searching online and find a possible solution to remove the downloaded update from the watch since maybe it is corrupted. Could not find a settings > Storage on the watch. Turns out that was on the Watch App on the iPhone. What I do find after some more searching is, that there is a Setting > General > Usage. In there I was able to see the software update download and delete it. There was only 103 MB of free space prior to deleting the software update, so that is my guess at what was going on, not enough free space to install the update.

Taking a look at the Usage I noticed that the Music App on the watch was using 5.3 GB of storage. Taking a look at that I found that to be odd, and Darcy did too, she did not intended to have that much music on the watch, so that must have been a default to load up with all the Music that can fit. Upon trying to figure out how to delete some music on the watch I found that one can do it via the Watch App. However the watch App is not allowing full functionality at this point, since upon opening the app it immediately pops up a permanent over lay about a required watchOS update, beautiful work Apple. Thanks again for taking away our choice to not install an OS update, and preventing me from likely addressing the lack of free storage that was preventing the required update, laughable. So using the iOS app to quickly delete the songs seems to be out. The only other option is to delete the songs on the watch it self, which appears to be a process of you must delete one song at a time, with over 5GB of songs, thanks again apple, not ideal. The reasonable fix is probably going to have to involve doing a factory reset on the watch, and starting over.

## The solution

The eventual fix was wait, and Apple must have put a patch out for this problem in the iPhone app since it was days / weeks later that the Apple Watch app eventually started working and Darcy was able to delete songs in bulk to free up some storage, and then the Update was able to proceed with out further issues. Now if you were in a rush your only quick options would be a Factory reset of your watch, or take the time to delete songs one at a time on the watchOS UI, yikes!!!

## Conclusions 

Two core problems Apple is having. One is shielding the user from the details of whats going wrong. This is making it more difficult for the users to solve their own problem, and its making the technical savvy folks job more difficult too. Two Apple's we know best security policy is bitting them in the butt since in this case not allowing the user opt out or even postpone the software update to just to use the watch app, to erase songs and other data preventing the successful install of the required update. Good software should not be leaving the users with the only option of deleting over a thousand songs by hand on the watch or doing a factory reset on the watch.

Anyways this was extremely frustrating to me and my wife and I say Apple--;