---
title: "KDE Clock fixing inability to add new alarms"
date: 2025-05-26T16:10:15-07:00
draft: false
---

## Summary of the issue 

If your in a situation where you are using [KDE Clock](https://apps.kde.org/kclock/) and are not able to add Alarms. 

## The No Alarms Adding issue described in detail.

You attempt to add an  Alarm to the Clock program under the Alarms section. You fill in the details and click Done and no Alarms are listed. You may see a brief pop up towards the bottom of the window saying Alarm will ring in x minutes, but will notice there are now no Alarms listed. When this happens the Alarm will not  work.

![KDE Clock Window with Alarms Tab highlighted on the left. Then on the right No alarms configured and Alert text message at the bottom Saying Alarm with ring in 1 minute, which is certainly false in this case.](KDEClockMissingAlarm.png)

## A Solution 

1. The fix is to close the Clock window.

2. Open [System Monitor](https://apps.gnome.org/SystemMonitor/) or similar system process viewer on Linux...  

3. Find and Click on the Processes Tab

4. Type in `kclockd` in the search process search box, you may need to click a magnifying glass icon to show the text input field.

5. Select the `kclockd` process by left-clicking it.

6. Click the `End Process` button at the bottom left of the System Monitor window.

7. Re-Open the KDE Clock program

8. Attempt to add a new alarm.

9. Alarm should add and show in the list of Alarms (it may show duplicate it does for me sometimes too).

## Conclusion 

Killing the stuck clock `kclockd` process was what was needed to resolve this for me every time this has happened. Other attempts like clearing user files for Clock or even uninstalling and re-installing clock did nothing to resolve the issue, however those may be worth trying next if the above does not work for you.