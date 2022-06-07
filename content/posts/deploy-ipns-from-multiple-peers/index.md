---
title: "How to publish to the same IPNS address from multiple IPFS peers"
date: 2022-06-06T21:58:11-07:00
draft: false

---

## Introduction 

If your using IPFS and happen to have multiple computers or users who are trying to contribute to a shared website, this is a problem you will likely run into. How to deploy to the same IPNS address from different IPFS peers. No you don't need to copy your IPFS peer config, that won't work anyways. It can be  done and I will show how using the the IPFS Key Export command.

## Finding the key

On the source where you have been publishing run the following to get a list of all the keys:

	ipfs key list

## Exporting the key
 Once you have found or know the key name you want to export run the following command with `YourKeyNameHere` updated as aproprite to your needs.

	ipfs key export YourKeyNameHere

If the ipfs command is successful with export it will generate a file named like `YourKeyNameHere.key` in the current directory.

Save the `YourKeyNameHere.key` file to a shareable location so that you can transfer it to another machine, please note that this is essentially a private key so treat it as something you want to keep private, otherwise anyone will be able to publish to your IPNS address.

## Importing the key

On the node where you would like to start publishing from import the  key by running the following:
	
    ipfs key import YourKeyNameHere YourKeyNameHere.key

## Verify it works

And now when you run:

	ipfs name publish -key=YourKeyNameHere <hash of directory just added that you want to assign to your ipns address> 

You should now be deploying to the same IPNS address as was on the original IPFS peer.

## Conclusion

And there you have it a way to publish to the same IPNS address from multiple IPFS peers, feel free to repeat on as many peers you have and to share to trusted persons as well.