---
title: "Hugo How to add a fixed promotional value note to the Bottom of Each Post"
date: 2024-05-17T11:15:26-07:00
draft: true
---

I am running a hugo site this blog. I had the idea of how do I add a promotional Value for value note that would show at the 
bottom of each post, since I am shooting for the advertisement-free [V4V]() model. I wanted to figure out how to do this.

I went to my current theme [LoveIt]() and looked through the layout options where I eventually found footer.html 
`themes/LoveIt/layouts/partials/single/footer.html`.

There I added something like

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

While this works in getting the functionality added. I am noticing I am loosing formatting  and I think I know why, I am using formatting set in the body css, and I am in the footer which is referencing a different set of css, that's my initial guess.

Lastly, since this is not code in my project, this is not a reasonable way to do this.
I am guessing at best I need to fork the LoveIt theme to maintain my changes properly.
However, at the same time this seems like the wrong way to do this,
since I am creating a dependency between this theme and my specific website, this feels like I am doing something wrong.

And I was, I had found the right thing to modify, just in the wrong location.


## A Solution I came up with

The approach was correct in the idea,  I just need to do it outside of the theme. I just needed to make that same kind of file in my project, and that would load before the default in the theme. kind of works like if I have a local version do that otherwise default to the file in the theme to handle it.

Place the same changes here in my project not in the theme itself. `layouts/partials/single/footer.html`