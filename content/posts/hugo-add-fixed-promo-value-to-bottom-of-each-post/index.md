---
title: "Hugo How to add a fixed promotional value note to the Bottom of Each Post"
date: 2024-05-17T11:15:26-07:00
draft: false
---

I am running a hugo site this blog. I had the idea of how do I add a promotional Value for value note that would show at the 
bottom of each post, since I am shooting for the advertisement-free [V4V]() model. I wanted to figure out how to do this.

I went to my current theme [LoveIt]() and looked through the layout options where I eventually found footer.html 
`themes/LoveIt/layouts/partials/single/footer.html`.

There I added the following, just after the post-footer `<div>`

        <div class="details admonition quote open">
            <div class="details-summary admonition-title">
                <strong>Value for Value</strong>
            </div>
            <div class="details-content">
                <div class="admonition-content">
                    <p>Did you find this post helpful, entertaining, even valuable. Help keep independent sites like this online. <a href="/value-for-value"><strong>Contribute some value for the value received</strong></a></p> 
                </div>
            </div>
        </div>

While this works in getting the functionality, I was wanting. I was noticing that I was loosing formatting etc.

Lastly, since this is not code in my project, but in the theme I was using this did not seem like a reasonable way to 
do this. 
I am guessing at best I would have to fork the LoveIt theme to maintain my changes properly.
However, at the same time this seems like the wrong way to do this,
since I am creating a dependency between this theme and my specific website, this feels like I am doing something wrong.
And I was, I had found the right thing to modify, just in the wrong location.


## A Solution I came up with

I just needed to make that same kind of change on the corresponding file in my project. This change would load before 
the default in the theme, and that would do what I wanted in a manageable way that would not require direct dependence 
and forking of the theme.

1. Make a copy of the file for the footer.html from the theme and copy it to this location `layouts/partials/single/footer.html` in your project.
2. Add the new div "details admonition quote open" to this file, revert the footer.html in the theme.
