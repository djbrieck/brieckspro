---
title: "Roblox Lock First Person View"
date: 2025-02-17T15:37:01-08:00
draft: true
---

If you would like to force your Roblox Game to always be in the first person view, you can do so by adding a LocalScript to the StarterPlayerScripts service.

Here is how you can do it:

1. Go to View > Explorer >  StarterPlayer

2. Go to and click on StarterPlayerScripts

3. Right click select `insert object`

4. Select the `LocalScript` option, the `Script` option will not work.

Add the following to the LocalScript

    local Players = game:GetService("Players")
    local player = Players.localPlayer

    player.CameraMode = Enum.CameraMode.LockFirstPerson