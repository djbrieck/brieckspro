---
title: "Setting Java Runtime in VSCode"
date: 2022-01-25T08:02:44-08:00
draft: false
---

As quoted from Microsoft Visual Studio code instructions, clear as mud. 

"
## Configure Runtime for Projects
As Java evolves, it's common that developers work with multiple versions of JDK. You can map them to your local installation paths via the setting: java.configuration.runtimes. The setting has following format:

    "java.configuration.runtimes": [
    {
        "name": "JavaSE-1.8",
        "path": "/usr/local/jdk1.8.0_201"
    },
    {
        "name": "JavaSE-11",
        "path": "/usr/local/jdk-11.0.3",
        "sources" : "/usr/local/jdk-11.0.3/lib/src.zip",
        "javadoc" : "https://docs.oracle.com/en/java/javase/11/docs/api",
        "default":  true
    },
    {
        "name": "JavaSE-12",
        "path": "/usr/local/jdk-12.0.2"
    },
    {
        "name": "JavaSE-13",
        "path": "/usr/local/jdk-13"
    }
    ]

" (https://code.visualstudio.com/docs/java/java-project#_configure-runtime-for-projects)


If that left you baffled a bit then continue on...

Which means open open user settings json.

The short cut is Ctrl Shift + P

Type in `settings json`

Select "Preferences: Open Settings (JSON)"

Now you can add an entry like the above, but matched to your environment. 

Also if your running windows NT derived Windows your paths will need to be fancy garbage as follows:
    `"C:\\Program Files\\Microsoft\\jdk-17.0.1.12-hotspot"`

