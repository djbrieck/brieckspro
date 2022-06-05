# Project Notes

# First run project setup

Do a pull request to get the source code

    git clone https://github.com/djbrieck/brieckspro.git brieckspro

Download the submodules needed to run the project this is the "LoveIt" theme, othere wise you will not see anything rended when you try to run.

    git submodule init

    git submodule update

If you are wanting to deploy using the build_deploy.sh script you will need to create a key called bprokey, note this will be new unique IPNS address for each developler in this case, and will not update contents at brieckspro.com

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

## IPFS Deployment

# Add the public directory to ipfs

ipfs add -r public/

ipfs name publish -key=bprokey <hash output for public dir of last command>

ipfs pin remote add /ipns/k51qzi5uqu5dhqkrs9rp0zup48eylg3uunpbzrshjs2kd2b6u2iuax74ktuk9f --service=pinata