---
title: "KDE Clock fixing inability to add new alarms"
date: 2025-05-26T16:10:15-07:00
draft: false
---

## Introduction 

If your in a situation where you are using [KDE Clock](https://apps.kde.org/kclock/) and are not able to add Alarms. 

## The No Alarms Adding issue described in detail.

Upon attempting to add an Alarm to the Clock program under the Alarms section. After the details are entered and after clicking Done.  No Alarms are listed. You may see a brief pop up towards the bottom of the window saying Alarm will ring in x minutes, but will notice there are now no Alarms listed. When this happens the Alarm you just set will never ring. So if your experiencing this kind of issue read on for what has worked to resolve it.

## A Solution that has worked for me.

1. The fix is to close the Clock window.

2. Open [System Monitor](https://apps.gnome.org/SystemMonitor/) or similar system process viewer on Linux...  

3. Find and Click on the Processes Tab

4. Type in "kclockd" in the search process search box, you may need to click a magnifying glass icon etc.

5. Select the `kclockd` process by left-clicking it.

6. Click the `End Process` button at the bottom left of the System Monitor window.

7. Re-Open the KDE Clock program

8. Attempt to add a new alarm.

9. Alarm should add and show in the list of Alarms (it may show duplicate it does for me sometimes too), but that is a normal bugs with this program.

## Conclusion 

Killing the stuck clock `kclockd` process was what was needed to resolve this for me every time this has happened. Other attempts like clearing user files for clock or even uninstalling and re-installing clock did nothing to resolve the issue, however those may be worth trying next if the above does not work for you.