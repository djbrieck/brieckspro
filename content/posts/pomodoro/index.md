---
title: "Pomodoro Technique, and  a work log format for getting stuff done"
date: 2022-01-24T10:33:09-08:00
draft: false
---

This is one of the most useful things I was exposed to or discoverd while in college, the [Pomodoro Technique](https://francescocirillo.com/pages/pomodoro-technique)

It is a time management strategy where you break up your stuff to get done into 25 minute chunks followed by a 5 min break . There is more to it, but this is what I do on a day to day basis, and has been extremely effective for job requiring me to sit a computer and do software development work.

During that five minutes I always stand up and walk around, and use the restroom and or get some water etc to drink as needed. It has been a very ergonomic way to work or it has been for me. Always keeping me moving at least twice an hour.

Now the part that I would like to share with you is the file format method, sure there are a lot of fancy apps that probably make this process better by integrating all the details, but I never found one that sticks true to the Pomodoro technique as written in the books, but here is  what I do, yet another variation.

## Pomodoro work log format 

- this works for tracking hours worked
- functions as a todo listing / backlog
- records what you spent your time working on for the day

Every day using a text editor I create a new text file, with the current date as the file name.

So for January 23, 2022 it would be `01232022.txt` and you put all these files into an appropriate folder and you have a system of record.

In the files I mark at the very first line in the file when the work has started followed by a - the following when work ends. 

`700 - 800` is short for starting or clocking in at 7:00 AM and clocking out at 8:00 AM, so 1 hour of work is indicated. 

As an additional annotation I add the following `(1)` to show one hour worked in that start stop interval. Following that I provide a running total.

For example:

    600 - 800 (2)

    800 - 1000 (2) 4 

So that one was two, two hour block with a running total of four hours worked.

Then the rest of the file is lines of things to work on.

    Upgrade JDK to current LTS x-

    Research how to read version number from package.json xxx

The x's represent how many pomodoro the task took to complete, each representing 25 minutes, for accounting purposes the x can mean 30 minutes.  

Lines followed by - have been completed.

Tasks that are not completed carry over to the next day, however their hours do not.

Also I try to float all the completed tasks up in list, this helps with copying the unfinished tasks over to the next day. 

## Example File for my typical work day 

Here is a typical workday for me written in my Pomodoro syntax. [01212022.txt](01212022.txt)

    600 - 800 (2)

    800 - 1000 (2) 4 

    1000 - 1100 (1) 5

    1100 - 1200 (1) 6

    1200 - 100 (1) 7 

    100 - 200 (1) 8

    Setup x- 

    Project2 Planning x- 

    Project2 Tag Release -

    Corporate Planning  x- 

    Project2 Submit CR for CAT / Draft for PROD xx-

    Project2 reWrite Installer Instructions for CAT / PROD xxxxx- 

    Project2 Confirm app binary upload x- 

    Project2 Sonar Project setup build fix / reply xxxx-

    Project3 Server upgrade details review and setup x 

    Project2 Follow up on automatic build system setup and config 

    Project2 configure sonarLint in vSCode (setting JDK) 

    Project2 / Project1 research way to read project version from config to UI elements

    Project1 SonarLint Setup

    Project1 Make SIT Copy of install instructions 

    Project1 Make Dev copy of install instructions

    Project1 Merge Prod Branch to Master

    Project2 Merge Prod Branch to Master / Trunk

    Project1 wire up modal buttons (will need event emitter)

    Project1 Search ALL add links to Search view

    Project1 Fix / disable centering of the modal vertically

    Project1 Fix multiple calls problem, so API only gets called once per load of the
    window
