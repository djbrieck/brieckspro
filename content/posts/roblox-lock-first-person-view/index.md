---
title: "Roblox Lock First Person View"
date: 2025-02-17T15:37:01-08:00
draft: true
---

1. Go to View > Explorer >  StarterPlayer

2. Go to and click  on StarterPlayerScripts

3. Right click select insert object

4. Pick LocalScript option, Script will not work

Add the following to the LocalScript

    local Players = game:GetService("Players")
    local player = Players.localPlayer

    player.CameraMode = Enum.CameraMode.LockFirstPerson