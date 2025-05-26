#  Brieck's Pro hugo blog with IPFS Hosting

## First run project setup

1. Do a pull request to get the source code, [git version control client](https://git-scm.com/downloads) required.
```
git clone https://github.com/djbrieck/brieckspro.git brieckspro
```

2. Download the submodules needed to run the project this is the "LoveIt" theme;
otherwise you will not see anything rendered when you try to run using hugo later.
```
git submodule init

git submodule update
```

3. If you are wanting to deploy using the [build_deploy.sh](build_deploy.sh) script, you will need to create a key called `bprokey`, note this 
will be a new unique [IPNS](https://docs-ipfs-tech.ipns.dweb.link/concepts/ipns/#how-ipns-works) address for each developer in this case, and will not update contents at [brieckspro.com](https://brieckspro.com/), if you would like to share one key among several peers see how here
[How to publish to the same IPNS address from multiple IPFS peers](https://brieckspro.com/posts/deploy-ipns-from-multiple-peers/)

```
ipfs key gen bprokey
```

## Running the blog locally, [hugo](https://gohugo.io/installation/) must be installed first

```
hugo serve -D
```

## Create a new post

### Post with folder, this is best for post where images and files will need to be added.
```
hugo new posts/post-dir/index.md
```

### Adding a basic post that will be text only. 
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

##  Deployment
- Copy files in `/public` to hosting provider, this is a static website no other resources needed to deploy.

### IPFS Scripted Deployment see [build_deploy.sh](build_deploy.sh)

```
./build_deploy.sh
```

### Manual IPFS  

#### Add the `public` directory to local ipfs
```
ipfs add -r public/
```

### IPFS Cluster Deployment

####  If your running an ipfs cluster add  the `public` directory like so 
```
ipfs-cluster-ctl add -r -Q public/
```

#### Always update the IPNS address to start showing the latest content at your IPNS address generated.
```
ipfs name publish -key=bprokey <hash output for public dir of last command>
```