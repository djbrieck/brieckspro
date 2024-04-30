---
title: "How to link to other posts on the same own hugo site"
date: 2024-04-27T20:06:56-07:00
draft: false
---

How to link to a post on your own hugo site.

I can say I understand how the linking to an external site works in markdown on a hugo site.

Its `[Text link for external site](https://gohugo.io/content-management/cross-references/)`

which would render like this [Text link for external site](https://gohugo.io/content-management/cross-references/)

## Referencing posts on the same hugo site

The syntax looks like the following to reference posts on your own site 
        `[Link to my Beverage Mug warmer ]({{</* ref "posts/candle-mug-warmer-review/"*/>}})` 

which would render and work like the following. [Link to my Beverage Mug warmer post ]({{< ref "posts/candle-mug-warmer-review/" >}})

## There is more 

See [Hugo - Links and cross-references](https://gohugo.io/content-management/cross-references/) it can get quite complex 
there is another reference term, and with all the way paths can be resolved, it can be quite complex what may happen 
when using syntax like this.