---
title: "How to one click start ipfs daemon on Linux Mint Cinnamon"
date: 2025-04-07T20:03:33-07:00
draft: true
---

The goal here is to have a app icon I can place in the menu / taskbar on Linux mint to start the ipfs daemon and leave a terminal window open. This is an alternative to doing this manually or setting up a system service to start and stop manually. Stopping the service even if scripted like this would likely require a password entry to start and stop. This way is dirt simple and great for mobile application, where you don't want ipfs running eg running on the laptop battery or other limited power situation.

With the following workflow

Icon in task bar / menu that when clicked does the following

Opens terminal and runs the ipfs daemon command and leaves the window showing so i am aware ipfs daemon is running and can monitor or stop as needed

1. Right-Click on the Cinnamon Menu

2. Select "Edit Menu"

3. I selected "Web" Applications category.

4. Click the "New Item" button

5. For Name: enter `start ipfs daemon`

6.  Command: `ipfs daemon`

7. Check checkbox for "Launch in Terminal ?"

8. Pick a icon

9. Click "OK" when done

10. Search for the item in Menu

11. Right click on `start ipfs daemon` and select Add to panel.

12. Now its in the menu bar and you can click and start ipfs with just one click.

13. Windows stays open until you stop server using <kbd>ctrl</kbd> + <kbd>C</kbd>or close the window stopping the server as well.

