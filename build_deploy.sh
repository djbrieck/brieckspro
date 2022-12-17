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