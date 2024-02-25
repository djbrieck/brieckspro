---
title: "Build and Deployment Bash Script for Hugo to IPFS IPNS with remote pinning"
date: 2022-03-05T19:36:18-08:00
draft: false
---

Just recently came up with this deployment script for this site, and this thing is a real time saver. 

It Really speeds up the process,
and makes the deployment process a lot less commands, with four commands in this one script.
See below.

## The improved workflow with this script:

1. Write your content

2. Commit to GitHub.

3. Run the script `./build_deploy.sh`, wait, and it's done.


        #!/bin/bash

        echo "Attempting to build project with hugo"
        hugo
        if [ $? -ne 0 ]; then
            echo  "Hugo Build failed!"
            exit 0
        fi

        echo "Attempting to add public directory to ipfs"
        PUBLIC_HASH=$(ipfs add -rQ public/ )
        if [ $? -ne 0 ]; then
            echo  "Add to IPFS failed!"
            exit -1 
        fi

        echo "Recieved public hash of: $PUBLIC_HASH so lets try to update IPNS to it"
        ipfs name publish -key=bprokey $PUBLIC_HASH 
        if [ $? -ne 0 ]; then
            echo  "IPFS Publish to IPNS failed"
            exit -2 
        fi

        echo "Attempting to pin to pinata remote"
        ipfs pin remote add /ipns/your_IPNS_HASH_for_pinning --service=pinata
        if [ $? -ne 0 ]; then
            echo  "Pinning to pinata failed!"
            exit -3 
        fi


[source for build_deploy.sh](https://github.com/djbrieck/brieckspro/blob/main/build_deploy.sh)
