---
title: "Fleet How to Turn on line length guide"
date: 2024-05-02T05:51:52-07:00
draft: false
---

If you would like to add the vertical line length guide to your Fleet Editor for example the typical 80 character one 
for example, here is how you can add it.

1. Open Fleet 
2. Click the menu ||| horizontal lines that looks like hamburger. 
3. Then Select menu File > Settings > Settings... or use shortcut <kbd>Ctrl</kbd> + <kbd>,</kbd>
4. Scroll down and click the "Edit in settings.json" link
5. Add a line like the following to the `settings.json`


       {
           "editor.guides": [80],
       }

For more options of what you can add in see [Fleet Settings Documentation](https://www.jetbrains.com/help/fleet/settings.html)
 


