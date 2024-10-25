---
title: "Thunderbolt 1 Thunderbolt 2 to USB 3 USB-C Thunderbolt 3 Adapter"
date: 2024-09-30T06:50:36-07:00
draft: true
---

## Problem: I need faster usb ports on a vintage MacBook Pro that has Thunderbolt 1 what are my options?

## Introduction and Background 
For example, I have been using a MacBook Pro Late 2011.
The slow USB 2 speed is one of my largest problem areas on this system especially when doing backups to external hard 
drives.

I realized my machine has a Thunderbolt port,
that I had been using primarily as a mini display port to just connect an external display.
This is a first generation Thunderbolt port, so it can go up to some theoretical speed of 10Gbit/s,
which should be more than enough speed to enable a 5Gbit/s USB 3 port.

And that is the port I need since nearly all of my external backup hard drives now have USB 3 connectivity.
And now it's not cost-effective nor worth it to try and find firewire 800 external enclosures, since USB3 is 
significantly faster and cheaper.

USB 3+ including USB-C is the standard for fast external hard drives and generally offers faster performance and enables 
using high-performance SSD drives at their full potential.

## Starting to find a thunderbolt solution for faster usb ports on a 2011 Mac Book Pro

I started looking around for things I could connect to allow me to add some faster usb 3 ports. I was initially thinking of something small like a dongle, I should be able to grab a Thunderbolt to USB 3 adapter, really basic simple and should be economical right since Thunderbolt is pretty old standard now.

To my surprise, I was finding little of anything,
and most of my searches where returning things meant for Thunderbolt 3. To say the least, I was pretty disappointed.
Went to YouTube and saw others where having a similar problem [Am I the only one
still using Thunderbolt 2](https://www.youtube.com/watch?v=ZHSoSRMYiYE&lc=UgxGym35SVNUKgltaFF4AaABAg.9ZNFgOY1TbQ9ZbTwiCVT9N).
And while I found an adapter, the cost was pretty high for an adapter that just adds one USB3 port and an eSATA port.
The Price was $75–$100, and that's all you get, and good luck finding one still in stock.
Also, if you find and use these few purpose dongles you lose your external display while using it, which is less than ideal, since this 13" MacBook Pro has not the best resolution at 1280 X 800 in 2024.

Then I recalled why not find a Thunderbolt Docking station,
since that has more features and many ports added like video out port/s,
ethernet, audio, all of which could be useful to have at your desk.

Searched for that and found next to nothing still available for sale.
Went to eBay and results were similar, a lot of Thunderbolt 3 stuff and a few Thunderbolt 2 things sprinkled in.
Also, good luck finding a Thunderbolt 1 dock,
like searching for a needle in a haystack of newer Thunderbolt things,
and It's pretty hard
to filter for just Thunderbolt 1. And used prices are much better but still $50-$100 for used things.
Still better than buying the single use device, but still not great especially for an older Thunderbolt 1/2 dock.

## A Solution: The new ones can be backwards compatible

The Secret is Thunderbolt 3 is backwards compatible to Thunderbolt 1 and 2 with the appropriate chain of adapters, and a dock that supports backwards compatibility.

I came across this discovery while searching for Thunderbolt to Thunderbolt 3 adapter and found an interesting answer to this question [Is Thunderbolt 2 to Thunderbolt 3 (type C) possible?](https://apple.stackexchange.com/questions/278078/is-thunderbolt-2-to-thunderbolt-3-type-c-possible)

"Now, here is where things start to get weird. If you buy a Thunderbolt 3 dock, for example, the CalDigit TS3 Plus Dock you can use the Apple adapter to connect a Thunderbolt 2 Mac to it. Most Thunderbolt docks have two Thunderbolt ports on them, one upstream port to connect the computer to the dock and one downstream port for daisy-chaining more Thunderbolt devices. That downstream port is actually a full-featured USB-C port as well, with support for Thunderbolt 3, Display Port Alternate mode, and USB 3.1. So you can actually plug the 2016 21.5" LG UltraFine 4K Display in to that downstream port, and it will work!"

So with a compatible dock and the only one that admits backwards compatibility upfront is the [CalDigit Thunderbolt 3 devices] (https://www.caldigit.com/is-my-caldigit-thunderbolt-3-device-compatible-with-apple-thunderbolt-1-and-2-computers/) Unfortunately, it is pretty expensive new ($299.99 USD) and used ($140 USD on eBay)

Did some searching on eBay and found a deal on a [Startech Thunderbolt 3 hub TB3DK2DPPD](https://www.startech.com/en-us/cards-adapters/tb3dk2dppd), now according to StarTech specifications listed there is no mention of backwards compatibility, in fact the requirements of the dock state as a System Requirement you need to have "Thunderbolt 3 equipped computer with a Thunderbolt 3 port." Contacted StarTech technical support, and they concluded you can't  even go Thunderbolt 2 to Thunderbolt 3 , which is not the case at all, even Apple notes in the description for their [Thunderbolt 3 to Thunderbolt2 adapter](https://www.apple.com/shop/product/MMEL2AM/A/thunderbolt-3-usb-c-to-thunderbolt-2-adapter) is bidirectional with the following words.

"As a bidirectional adapter, it can also connect new Thunderbolt 3 devices to a Mac with a Thunderbolt or Thunderbolt 2 port and macOS Sierra or later."

Reading in between the lines, I noticed that my MacBook had a version of macOS that was supported,
so in theory, the OS should have all the drivers already to run this dock built in.

So I decided to test it out and dropped $59.95 USD including free shipping on a used Startech TB3DK2DPPD on eBay. How this thing is 59.95 is beyond me but new retail on this box is $376.99, whoa... Also make sure when buying a used dock cheap that it's not broken and also includes the AC adapter or prepare to spend $20 or so to replace that.

Also, I found another auction on eBay for the required Apple Thunderbolt 3 to Thunderbolt 2 adapter with the Thunderbolt 2 cable in one auction. Won that and paid a total of $55.50 for the adapter and cable including shipping, nice. New from Apple you can expect to pay $88.00 for this stuff.

To get this all working I needed one more thing and that is a display port to mini display port adapter, since my MacBook Pro has mini display port I wanted to minimize costs and utilize all my existing external display adapters and cables. So I ordered a Cable Matters DisplayPort (Male) to Mini DisplayPort (Female) Adapter to fill the gap connecting to the new docks full size display port, that was $7.99 new including shipping.

I am pleased to report that it all works just fine.

Tested:
- External 2K Display working over displayport chain DP --> mini DP --> DP.
- External 1080P display works with mini DP to DVI single link adapter.
- Ethernet wired adapter works
- Sounds out works
- All usb ports work, and are enabled at 5 Gbit/s or faster.
- 10 Gbit/s support over usb-c on the downstream thunderbolt 3 port.

Future TODO Test Performance possible on this old box, how well does it perform and work for day to day use.
    
    USB 2 HDD on laptop directly

    USB 3 HDD on Dock

    USB 3 SSD on Dock


I am Blown away that this is possible and I just upgraded a 11-year-old laptop to have current ports, sure the machine may not be able to max out those speeds, and will be limited to the Thunderbolt 1 speeds, but it will enable me to choose any one device and run it at a pretty fast speed well above the USB 2.0 standard and FireWire 800 standards.
Lastly,
it should make it possible to copy as fast as the hard drive can go via USB 3 at the 5Gbits/s external hard drives.

Future Ready Notes:
A thunderbolt 3 dock is ready for my next laptop where I will be able to take full advantage of this Thunderbolt 3 ports speed and 85 Watts worth of USB charging.
I will need to buy a Thunderbolt 3/4 cable.
With this configuration of using a newer dock on older hardware,
I can't recommend buying older thunderbolt docks or single purpose thunderbolt adapters at this point.
Good luck finding a deal it is doable with this configuration,
and it actually works and is relatively affordable, with used market pricing!

$123.44 well spent, and at this price it makes sense, paying full price for the dock and the Apple adapter and cable would be hard to swallow at $464.99 not including the display port adapter, at that price I could be well on my way to newer hardware with high performance built in.

I am surprised that the Dock manufactures are not more open about this backwards compatibility, it seems like they could sell maybe a few more docks to folks with older hardware, wanting to add some faster ports. Currently, the users first impression is this is it's not even an option, I had the same bias early on, and I was wrong, no possible and does work just fine, if you do your homework first.

## Choosing a Dock that is very likely to work

Choosing a compatible dock if you're willing to take the risk and buy a dock and see if it works.
Sad to say it, but you need to ignore what the Dock manufactures say on the thunderbolt requirements almost completely.

Instead, pay attention to what Operating Systems are supported by the Thunderbolt 3+ dock especially important for Mac compatibility,
when making a purchase decision. If the dock supports your current Operating System version running on your older Mac / PC, then it's very likely to have all the drivers it needs already baked into macOS and you should be good to go. Otherwise, you may end up in a case where x works but y and Z do not work.

Also, at this point, I would avoid buying first gen manufacture specific thunderbolt docks eg ones made by DELL, HP, Lenovo or any PC manufacture specific device. Its seems a many of these docks were only made to work properly with specific systems, so do your research. Some may work, and many can be found for dirt cheap. Also as an update, many HP docks list macOS compatibility now so as always check OS version support to see if your system will be likely to work with the dock. The Startech TB3DK2DPPD dock should work on macOS 10.12 - 10.15, 11.0, 12.0 and Windows 7 to 11. My next test is how well it will work on Linux since Startech does not mention any official Linux support, but I am sure it will likely work just fine on Linux. 

I was able to later test and confirm this with a HP ELiteBook 840 G5, and can confirm this dock works fine on Windows 10, 11 and Linux Mint 21.x on this laptop.