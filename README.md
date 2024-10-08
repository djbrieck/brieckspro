# Project Notes

# First run project setup

Do a pull request to get the source code

    git clone https://github.com/djbrieck/brieckspro.git brieckspro

Download the submodules needed to run the project this is the "LoveIt" theme;
otherwise you will not see anything rendered when you try to run using hugo.

    git submodule init

    git submodule update

If you are wanting to deploy using the build_deploy.sh script, you will need to create a key called bprokey, note this 
will be a new unique [IPNS](https://docs-ipfs-tech.ipns.dweb.link/concepts/ipns/#how-ipns-works) address for each developer in this case, and will not update contents at brieckspro.com, if you would like to share one key among several peers see how here
[How to publish to the same IPNS address from multiple IPFS peers](https://brieckspro.com/posts/deploy-ipns-from-multiple-peers/)

    ipfs key gen bprokey

## Run locally, hugo must be installed

hugo serve -D

## Create a new post

hugo new posts/post-dir/index.md #post with folder for images

hugo new posts/post-title.md

## Commit all changes 

git add files to add

git commit

## Building

hugo

# Scripted deployment

./build_deploy.sh

## Manual IPFS Deployment

# Add the public directory to your local ipfs

ipfs add -r public/

ipfs name publish -key=bprokey <hash output for public dir of last command>

#Optional Remote Pinning, if you have such a service available. 

ipfs pin remote add /ipns/k51qzi5uqu5dhqkrs9rp0zup48eylg3uunpbzrshjs2kd2b6u2iuax74ktuk9f --service=aService
