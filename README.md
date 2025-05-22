# Project Notes

# First run project setup

Do a pull request to get the source code
```
git clone https://github.com/djbrieck/brieckspro.git brieckspro
```

Download the submodules needed to run the project this is the "LoveIt" theme;
otherwise you will not see anything rendered when you try to run using hugo.
```
git submodule init

git submodule update
```

If you are wanting to deploy using the build_deploy.sh script, you will need to create a key called bprokey, note this 
will be a new unique [IPNS](https://docs-ipfs-tech.ipns.dweb.link/concepts/ipns/#how-ipns-works) address for each developer in this case, and will not update contents at brieckspro.com, if you would like to share one key among several peers see how here
[How to publish to the same IPNS address from multiple IPFS peers](https://brieckspro.com/posts/deploy-ipns-from-multiple-peers/)

```
ipfs key gen bprokey
```

## Run locally, hugo must be installed

hugo serve -D

## Create a new post

### Post with folder, this is best for post where images and files will need to be added.
```
hugo new posts/post-dir/index.md
```

### Adding a basing post thats just a text only version
```
hugo new posts/post-title.md
```

## Commit all changes 

```
git add files_to_add

git commit
```

## Building

```
hugo
```

# Scripted deployment

```
./build_deploy.sh
```

## Manual IPFS Deployment

### Add the public directory to your local ipfs
```
ipfs add -r public/
```

### Or If your running an ipfs cluster update use this option instead
```
ipfs-cluster-ctl add -r -Q public/
```

### update the ipns address
```
ipfs name publish -key=bprokey <hash output for public dir of last command>
```