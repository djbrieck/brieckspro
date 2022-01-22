# Project Notes

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