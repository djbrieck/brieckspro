---
title: "Convert Photo to line drawing for coloring"
date: 2023-08-22T12:13:11-07:00
draft: false
---

This is for those times when you can't find the coloring page your looking for but can find plenty of photos or already
colored drawings.
This process will turn a photo into a line drawing.


For this one, you will need to have [GIMP -
GNU Image Manipulation Program](https://www.gimp.org/downloads/) installed on your computer.

1. Open the program GIMP.
2. File > New
3. Select Template aka paper size you will be printing on. 
   
   ![Select Template Size and orientation](CreateNewImage.png)

4. Select orientation Portrait or Landscape depending on the orientation of the source image.
5. File > Open Image as Layers and open the image you want to convert.
6. Select Move Tool ![Move Tool](MoveTool.png)
7. Resize the image and make it as large as will fit. Press Shift + S to enable the grab corners to do so
8.  Select Colors > Desaturate > Desaturate...
9.  Press OK
10. Filters > Edge-Detect > Edge...
11. Press OK
12. Color > Invert
13. Save or Print the line drawing creation.

## TODO Add / make a screen recording doing this process
    Add link to video on whatever

## The original photo
   ![toy ship on purple octopus](IMG_3093.jpg)

## The converted to coloring picture exported as PNG

   ![The Converted to line drawing version of ship on purple octopus for coloring](phototoColoring.png)

## The GIMP file for reference, based on following the steps above, this is what you should end up with.
   <a  href="phototoColoring.xcf.zip" target="_blank"> Download photo to coloring GIMP xcf zip compressed 6.6 MB</a> 
 
Source 

[Making a line drawing from a photo](https://www.reddit.com/r/GIMP/comments/edjrzn/making_a_line_drawing_from_a_photo/)