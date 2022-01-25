---
title: "Update Private Github Password on Windows"
date: 2022-01-25T09:19:27-08:00
draft: false
---

Using github on windows in a corporate environment currently has a quirk for me, when the password gets changed on a corporate schedule. github stops working when you try to do a push. I will see

    git push
    remote: Invalid username or password.
    fatal: Authentication failed for 'https://github....

... is your corporate domain for your internal private github

The fix is open "Credential Manager" program.

1.  Click on "Windows Credentials"

2. Looks under “Generic Credentials”

3. Try and find the entry thats for github, hint it may not say github since your corporate hosted github may not contain github in the domain.
    For me I found an entry that looks like the following 
    `Microsoft_OC1:uri=…`
    where … is your github email or username@domain details.

4. Click Edit

5. Re-enter your new updated password.

6. Try the git push again

7. Now you should be prompted in windows to re-login at least in 2 more times. First with a pop page from  your internal github, and next a pop from windows.

8. push should finish successfully if you get all your passwords and such correct.

9. Repeat on your corporate password update schedule.