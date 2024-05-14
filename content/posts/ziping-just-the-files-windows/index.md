---
title: "How to Zip Just the Files for a project without a containing directory "
date: 2024-05-14T10:10:50-07:00
draft: false
---

This will help you create a zip archive that went extracted just dumps a bunch of files in the directory it is extracted
in. Usually a problem you don't want in my option, but when I was requested to make such a zip archive, here is how I made one 
on Microsoft Windows 10.


## How to make a zip file containing just a bunch of files, not contained in a root directory.


For example, you have MyFiles directory with file1 file2 and/ or folder1 in it. And you do not want a MyFiles directory to 
show when extraction occurs, but just file1, file2, and folder1.

1. Open the MyFiles directory in (Windows File Explorer ?).

2. Manually select the exact files in the folder using the <kbd>ctrl</kbd> and left mouse click on each file/folder 
wanted or select them all with <kbd>ctrl</kbd>-<kbd>a</kbd>.

3. Then right mouse click on any one of the highlighted files and select the contextual menu option 
of  `Send to` > `Compressed (zipped) folder`

4. Finally, a zip file will be created named after the file right-clicked on.

5. Rename the zip file as needed / wanted, press <kbd>F2</kbd> to start renaming the zip file.