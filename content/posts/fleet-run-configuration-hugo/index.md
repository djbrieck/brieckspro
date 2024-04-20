---
title: "Hugo Run Configuration for Fleet"
date: 2024-04-19T15:57:23-07:00
draft: false
---

After getting tired of having to run `hugo server -D` from a terminal window everytime. I wanted to see if there is a 
faster, less manual way.

# Hugo Run Configuration for Fleet

There is not yet a [Fleet](https://www.jetbrains.com/fleet/) plugin for [Hugo](https://gohugo.io/) like there is for 
[IntelliJ IDEA Community Edition / Ultimate](https://www.jetbrains.com/idea/), but using the 
[Fleet documentation](https://www.jetbrains.com/help/fleet/run-configs.html#properties), I was able to arrange the 
following that works.

1. Click the run / Play button icon or press Ctrl + R 
2. Select option to `Create Run Configuration` which should open a nearly blank file at `./fleet/run.json`
3. Make the contents of run.json look something like this


        {
            "configurations": [
                {
                    "type": "command",
                    "name": "Hugo Development Server",
                    "program": "/usr/local/bin/hugo",
                    "args": ["server", "-D"],
                },
            
            ]
        }

4. Save `run.json`
5. Hit the Run Button or press Ctrl + R again now your new `Hugo Development Server` run configuration should be 
highlighted, then press Enter.


