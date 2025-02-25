---
title: "How to Lock First Person View in a Roblox Game using Roblox Studio"
date: 2025-02-17T15:37:01-08:00
draft: false
---

If you would like to force your Roblox Game to always be in the first person view, you can do so by adding a LocalScript to the StarterPlayerScripts service.

Here is how you can do it:

1. Open Roblox Studio.

2. Go to View > Explorer >  StarterPlayer

3. Go to and click on StarterPlayerScripts

4. Right click select `insert object`

5. Select `LocalScript` option, the `Script` option will not work with the following.

Add the following to the new LocalScript

    local Players = game:GetService("Players")
    local player = Players.localPlayer

    player.CameraMode = Enum.CameraMode.LockFirstPerson