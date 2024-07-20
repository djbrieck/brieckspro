---
title: "iPhone Years of Support"
date: 2024-06-29T21:46:33-07:00
draft: true
---

My goal was to have a reference that shows every iPhone since the iPhone 6 in a table that shows historical track record all in one place to allow an easy comparison of how long a given phone has been on the market and about how much current Apple software support is left on any given phone.

This information may be used to indicate when software support could end for a current iPhone model in the future. As with this and investing, historical performance may not indicate what will happen in the future, but as it stands now the track record has been very consistent. Current support always ends about six years after it was first released.


# iPhone' years of support 

[iPhone' years of support spreadsheet June 2024 Updated - ODS](iPhone%20Years%20of%20Support.ods)

# Column Notes
Provide details hear of what each of the columns means and provide explanation of any formulas used.


## iPhone Model 
The model name of the Apple iPhone being referenced e.g. "iPhone 12 Mini"


## first available date
This is most critical date for updating timing, but its when this device was announced / released in writing for the first time officially by Apple.

This information was sourced from [EveryMac](https://everymac.com/systems/apple/iphone/index-iphone-specs.html) and [Wikipedia iPhone](https://en.wikipedia.org/wiki/IPhone) entries for each model of phone listed.


## year discontinued 
Is the date that apple pulled this device from the Apple Store, usually in occurrence with the new model replacing this one for sale.

Right now this information is probably a column that could be removed since it seems to have no correlations to anything meaningful. Something to keep in mind when you buy an older new iPhone eg buying a new iPhone 13 in July 2024 does not really buy you any extra guaranteed support since its all based on when it was first announced.

This information was sourced from [EveryMac](https://everymac.com/systems/apple/iphone/index-iphone-specs.html) and [Wikipedia iPhone](https://en.wikipedia.org/wiki/IPhone) entries for each model of phone listed.


## year that major version support stopped (meaning when the next OS came out that this phone could not run)
This is the date when Apple releases the Next latest version of iPhone OS that this device will not be able to officially install. 

This date is based on the records of `Initial release` or `General availability' dates on [Wikipedia iOS pages](https://en.wikipedia.org/wiki/IOS) 


## six years later date
This is a calculated date six years into the future based from that `first available date`. Using LibreOffice Calc formula `=DATE(YEAR(B2)+6,MONTH(B2),DAY(B2))`  B* is the column and specific date row for the `first available date` for each listed iPhone


## official support left estimate
For iPhones no longer getting updates this will just be a hard entered 0

For iPhones not yet obsolete and still running a current iOS version this is field is calculated using the follow LibreOffice Calc formula. `=E12-TODAY()` E* being the current row from the `six years later date` column being subtracted from today's date.

This should be read as days/months/years of support left. For example `02/23/00` would be 2 Months 23 Days and 0 more years of support left.

