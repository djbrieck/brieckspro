---
title: "Hugo Add Fixed Promo Value to Bottom of Each Post"
date: 2024-05-17T11:15:26-07:00
draft: true
---

I am running a hugo site with the LoveIt theme.

I had the idea to add a promotional Value for value note that would show at the bottom of each post, since I am shooting for the ad free V4V model.

I hacked together a way to do this by editing the footer.html (themes/LoveIt/layouts/partials/single/footer.html)

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

Lastly since this is not code in my project, is this a reasonable way to do this. I am guessing at best I need to fork the LoveIt theme to maintain my changes properly, but at the same time this seems like the wrong way to do this, since I am creating a dependency between this theme and my specific website, this feels like I am doing something wrong.

What am I missing in is there another way to solve this problem / add this function without having to modify the theme in way that ties it to my specific website.


## A Solution I came up with

Place the same changes here in my project not in the theme itself. `layouts/partials/single/footer.html`