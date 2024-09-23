---
title: "iPhone Years of Support"
date: 2024-06-29T21:46:33-07:00
draft: false
---

# Introduction

For my most recent used iPhone purchase I put together this "iPhone years of support" spreadsheet and [ My notes and spreadsheet for how I choose my next phone after the iPhone 7 Plus]({{< ref "posts/iphone7-upgrade-next-move/">}}).  This attached spreadsheet for you to download shows every iPhone since the iPhone 6 in a table including historical iOS hardware support track record and also shows projections of when current iOS support may end for current models. As with this and investing, historical performance may not indicate what will happen in the future, but as it stands now the track record has been very consistent. Current support always ends about six years after the iPhone was first announced.


## iPhone years of support spreadsheet
[iPhone years of support spreadsheet June 2024 Updated - ODS](iPhone%20Years%20of%20Support.ods)

### Column Notes
This rest of this page following is the description and notes for each of the columns included in this spreadsheet. 

### iPhone Model 
The model name of the Apple iPhone being referenced e.g. "iPhone 12 Mini"


### first announced date
This is the most critical date for updating timing, but It's when this device was announced / released in writing for the first time officially by Apple.

This information was sourced from [EveryMac](https://everymac.com/systems/apple/iphone/index-iphone-specs.html) and [Wikipedia iPhone](https://en.wikipedia.org/wiki/IPhone) entries for each model of phone listed.


### year discontinued 
Is the date that apple pulled this device from the Apple Store, usually in occurrence with the new model replacing this one for sale.

Right now this information is probably a column that could be removed since it seems to have no correlations to anything meaningful. Something to keep in mind when you buy an older new iPhone e.g. buying a new iPhone 13 in July 2024 does not really buy you any extra guaranteed support since its all based on when it was first announced.

This information was sourced from [EveryMac](https://everymac.com/systems/apple/iphone/index-iphone-specs.html) and [Wikipedia iPhone](https://en.wikipedia.org/wiki/IPhone) entries for each model of phone listed.


###  Current iOS support dropped on
This is the date when Apple releases the Next latest version of iPhone OS that this device will not be able to officially install. 

This date is based on the records of `Initial release` or `General availability` dates for iOS as recorded on [Wikipedia iOS pages](https://en.wikipedia.org/wiki/IOS) 


### six years later date
This is a calculated date six years into the future based from that `first announced date`. Using LibreOffice Calc formula `=DATE(YEAR(B2)+6,MONTH(B2),DAY(B2))`  B* is the column and specific date row for the `first announced date` for each listed iPhone


### official support left estimate
For iPhones no longer getting updates this will just be a hard entered 0

For iPhones not yet obsolete and still running a current iOS version this is field is calculated using the follow LibreOffice Calc formula. `=E12-TODAY()` E* being the current row from the `six years later date` column being subtracted from today's date.

This should be read as days/months/years of support left. For example `02/23/00` would be 2 Months 23 Days and 0 more years of support left.

### Last OS version supported
This is the recorded last major version of iOS that the iPhone supported. For example for iPhone 6 that would be iOS 12 not including any patches or security updates increments since then.

### years of support received
This is the number of years of support calculated from when announced to when current iOS support was dropped. I used the LibreOffice Calc formula to calculate the year `=DATEDIF(B2,D2,"y")` Where B* is the `first announced date` and D* is the `Current iOS support dropped on` date.

### software years supported after hardware discontinued date
This is date difference between the discontinue date of the iPhone and when Current OS support was pulled. I used the following LibreOffice Calc formula `=DATEDIF(B2,C2,"y")`  Where B* is the `first announced date` and C* is the `year discontinued` date.