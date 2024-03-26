---
title: "Update Private Github Password on Windows"
date: 2022-01-25T09:19:27-08:00
draft: false
---

Using GitHub on windows in a corporate environment currently has a quirk for me, when the password gets changed on a corporate schedule. GitHub stops working when you try to do a push. I will see

    git push
    remote: Invalid username or password.
    fatal: Authentication failed for 'https://github....

... is your corporate domain for your internal private GitHub

The fix is open "Credential Manager" program.

1.  Click on "Windows Credentials"

2. Looks under “Generic Credentials”

3. Try and find the entry that's for GitHub, hint it may not say GitHub since your corporate hosted GitHub may not contain GitHub in the domain.
    For me, I found an entry that looks like the following 
    `Microsoft_OC1:uri=…`
    where … is your GitHub email or username@domain details.

4. Click Edit

5. Re-enter your new updated password.

6. Try the git push again

7. Now you should be prompted in windows to re-login at least in 2 more times. First with a pop-up page from  your internal GitHub, and next a pop-up window from Windows OS.

8. Now the push should finish successfully if you get all your passwords and such correct.

9. Repeat on your corporate password update schedule.