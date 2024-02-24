---
title: "Apple watchOS 8.5.1 update fails  on Apple Watch Series 4"
date: 2022-07-22T18:34:35-07:00
draft: false
---

## Introduction

Darcy was telling me that her Apple Watch (model A1977) was having problems updating,
so this is what I found. 

## Troubleshooting

I attempt to manually run the installer on the watch nothing happens.
The installer just hangs and does not move forward on the progress bar as long as I can see it.
Then every time I go back into setting for the Software Update on the watch,
it's basically a fresh start all over, and I have to press and start the installation.
No error message is ever displayed on the screen.

Only on the phone that is paired and in the Watch app do you get a hint of a problem, pretty terrible.

Update fails and displays an extremely vague error message when the update fails when we probably have a specific problem like a lack of free storage space to successfully install the software update. Below is how I come to that conclusion.

## More troubleshooting and finding the cause of the failed update, the storage is full

Noticing that the software was failing to install,
and showing on the Apple Watch app an error message with the following:

        "Unable to Install Update, An error occurred installing the latest version of watchOS on your Apple Watch"

So I do a little searching online
and found a possible solution to remove the downloaded update from the watch since maybe it is corrupted.
Could not find in Settings > Storage on the watch.
Turns out that was on the Watch App on the iPhone.
What I do find after some more searching is that there is a Setting > General > Usage.
In there, I was able to see the software update that was downloaded and delete it.
There was only 103 MB of free space prior to deleting the software update,
so that is my guess at what was going on, not enough free space to install the update.

Taking a deep dive at the Usage, I noticed that the Music App on the watch was using 5.3 GB of storage.
I found that to be odd, and Darcy did too, she did not intend to have that much music on the watch,
so that must have been a default to load up with all the Music that can fit.
Upon trying to figure out how to delete some music on the watch, I found that one can do it via the Watch App. However, the watch App is not allowing full functionality at this point, since upon opening the app it immediately pops up a permanent overlay about a required watchOS update, beautiful work Apple.
Thanks again for taking away our choice to not install an OS update,
and preventing me from likely addressing the lack of free storage that was preventing the required update, laughable.
So using the iOS app to quickly delete the songs seems to be out.
The only other option is to delete the songs on the watch itself,
which appears to be a process of you must delete one song at a time,
with over 5GB of songs, thanks again apple, not ideal.
The reasonable fix is probably going to have to involve doing a factory reset on the watch, and starting over.

## The solution

The eventual fix was wait, and Apple must have put a patch out for this problem in the iPhone app since it was days / weeks later that the Apple Watch app eventually started working and Darcy was able to delete songs in bulk to free up some storage, and then the Update was able to proceed without further issues.
Now if you were in a rush, your only quick options would be a Factory reset of your watch,
or take the time to delete each song at a time in watchOS UI.

## Conclusions

Two core problems Apple is having.
One is shielding the user from the details of what's going wrong, nothing new there.
This is making it more difficult for the users to solve their own problem,
and it's making the technical savvy folks job more difficult too.
Two Apple's they know best security policy is causing their users problems using their own devices. 
Good software should not be leaving the users with the only option
of deleting over a thousand songs by hand on the watch or doing a factory reset on the watch.

Anyway, this was extremely frustrating to me and my wife, and I say Apple-- in my blog;