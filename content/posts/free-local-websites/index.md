---
title: "How to build free local websites"
date: 2025-07-07T18:45:29-07:00
draft: true
---

I have been pretty frustrated trying to find and then refind as needed information on local businesses, so I took action to make this better and at no cost to the businesses. I think a lack of website for many business is possibly due to the excessive costs and fees sometimes associated with running building and maintaining a website.  Most places just don't bother to take the time and effort to maintain a website and domain. For example back in 2020 a local restaurant LJ Brewskis had a website, but as of 2025, it no longer has one.

Many places in this small town of Union Oregon exclusively use [Facebook's business pages](https://www.facebook.com/business/help/1968057156746246?id=939256796236247) This has some potential issues, primarily Facebook requires your customers to log in to Facebook before they can view complete information on your business. Also, it may require customers to use the Facebook smartphone app and may otherwise make it difficult to find what your most current business information you would like to share. Most commonly I am looking for business hours, a menu, address, phone number and other basic information. I often find Facebook and or whoever manages the business page ends up  making that a challenge and excessively frustrating to get to the information assuming you don't get distracted in Facebook social media land and never reach where you set out for initially. 

## LJ Brewskis local Example of a Facebook business page experience

Give it a go yourself here [LJ Brewskis Facebook business page](https://www.facebook.com/profile.php?id=100063707583500).

### Not Logged-in experience

![LJ Brewskis Desktop Not Logged into Facebook experience ](LJBrewskisFacbookNotLoggedindesktop.png)

If your not logged in your soon forced to log in usually well before you find what you are looking for, and if you don't have a facebook account you don't have access to the information until you set up a Facebook account.

### Logged-in experience

And like that [Cab Driver said in Home Alone 2](https://www.imdb.com/title/tt0104431/characters/nm0865356/) "Ain't much better in here..." the same is true once your logged into Facebook, you really have to search around to still find what your looking for. And as noted here even the hours are not accurate to what was posted on the door of the restaurant in town.


![Logged in and Hours are wrong too](LJBrewskisFacebookLoggedInHoursLookOff.png)

Wait they don't actually open at 1 AM?

The next chore is finding the menu, some pages have a menu listed in the About information, LJ Brewskis use to have one, now that is gone or missing too as of writing this post.

![Logged in Now where is the Menu](LJBrewskisFacebookMenuMissing.png)

The only thing you can do now is browse through the photos or posts and hope to find the most current menu.

![which photo is the right menu](LJFaceBookWhichPhotoIsTheMenuYouWant.png)

For example searching through photos or posts for menus is something that is often necessary for many businesses, and each business' Facebook page is set up differently.


## Here is a solution that I built for the aforementioned LJ Brewskis

[LJ-Brewskis (Un-official)](https://k51qzi5uqu5dlr44wospfhm3h896r5hlml2ctjnf1lvyr9kth119np0gar4sx0.ipns.dweb.link/)

Now once you get passed the possible slow load time since this is freely self-hosted using [IPFS](https://ipfs.tech/). You will find a pure and simple page with no fluff, just the facts and the stuff you are looking for, and there is no login or Facebook or anything required of the visitor other than a browser and a working internet connection. 

 These pages as is for each clone have taken about 3 hours of work to make each site from first git clone to the site being up and hosted with a IPNS address. With Future enhancements planned I hope to get this down to less than an hour per site. But the idea with these site is to keep it simple and not overcomplicate things. Since I would rather see a basic website with all the information I am looking for rather than finding nothing at all for most places I would like to do business with or find information on. Feel free to follow this guide and do the same in your local area. So instead of re-searching for the same information and never knowing exactly what the search will provide, gather the local facts and create something useful for yourself and others to use as well. That is what I am did, read on if you would like to do similar.

## how to build a basic just the facts' website, you really need just the following for most:

1. Use HTML boilerplate or fork one of [my examples](https://github.com/djbrieck?tab=repositories&q=un&type=&language=&sort=) to get started or just use plain HTML / CSS no need to overcomplicate things some information is better than none is the goal here.

2. Add basics information to the body of index.html file with the following text template outline.

3. Start with a tile I provide the name of the business followed by (Un-Official) I put this at the top of the page right after the starting [body tag](https://www.w3schools.com/tags/tag_body.asp). I use a [h1 tag](https://www.w3schools.com/tags/tag_hn.asp)

```
<body>

  <h1>Buisness name (Un-official)</h1>
  ...
```

4. The next part is the facts' information I have come up with the following sections as a starting point:

Location

Email

Phone

Hours

Links

Menu

For each of the sections I do a h3 tag. For Location, it would look like the following.

```
<h3>Location</h3>
```

================

## The sections in detail for more of the specifics of what to include.

Add or leave out sections as needed this is just a basic starting point of the minimal useful information that should be easily provided, feel free to omit or add things as you deem necessary in accordance to your local area.

### Location

For the location add the physical address of the business in a text selectable manner, I use the [address tag](https://www.w3schools.com/tags/tag_address.asp).

```
<h3>Location</h3>
<address>123  Main St, City, ST 00000</address>
```


### Email

Provide email information in a [mail to](https://en.wikipedia.org/wiki/Mailto) link format if an email address is available

It ends up looking like the following 

```
  <h3>Email <a href="mailto:email@domain.com">email@domain.com</a></h3>

```

### Phone 

Provide telephone numbers if available. use a [telephone link](https://www.w3docs.com/snippets/html/how-to-add-telephone-links-with-html.html) so the visitor can place a call with a tap or two.

```
<h3>Phone <a href="tel:1234567890">123-456-7890</a> </h3>
```

### Links

Provide any official links the business may have. I like to label them by application or social network name as follows.

**Application: Name used of the business.**

```
<h4>Links</h4>
<a href="https://www.facebook.com/BizPage">Facebook: Biz-Page</a>
```

### Menu

Provide menu or list of services the business may provide. Generally speaking I take pictures of menus or menu boards. 
Then I create a LibreOffice Draw document and import the photos into that creating a new page for each photo. Then I 
convert that Draw document to a PDF.

Then from there I use Microsoft Copilot and convert the PDF to Plan HTML text and import that alongside the PDF having two 
links one for the pdf and one for the plain text.

I no longer recommend embedding PDF viewer since that does not always work well depending on the device used.

Also have both options is great since allows folks who can't see a pdf to still have access to the information. 

```
  <h3> Menu </h3>
    <p><a href="doc/Menu.pdf">Takeout menu - PDF</a></p>
    <p><a href="doc/Menu.html">Takeout menu - text only</a> </p>
```