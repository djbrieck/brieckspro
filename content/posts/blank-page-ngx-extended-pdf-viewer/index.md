---
title: "Blank page when printing a single page pdf using ngx-extended-pdf-viewer"
date: 2024-05-04T07:21:29-07:00
draft: false
---

## The Problem

Had an [Angular](https://angular.io/) application setup like this at work and was trying to figure out why we were getting a blank leading 
page when clicking the print button in [ngx-extended-pdf-viewer](https://pdfviewer.net/extended-pdf-viewer/intro).

So I created a new fresh start with the following components we were using:
- Angular 12.2.16 
- ngx-extended-pdf-viewer 3.2.4

Conclusion now the blank is at the end. So this combination has issues to begin with at this time.

## The Solution

Upgrade to ngx-extended-pdf-viewer 10.5.0 which fixed the issue for me. I selected this version by selecting a version 
of ngx-extended-pdf-viewer that best supported Angular 12.x as listed in its package.json.

But before I could even get there, I ran into trouble see below just getting the test project to run without an error.

    <ngx-extended-pdf-viewer [src]="'assets/document.pdf'" useBrowserLocale="true" height="80vh"></ngx-extended-pdf-viewer>

It Was only getting to this error (see below), and this was based on the documentation example from 
ngx-extended-pdf-viewer.

    Error: src/app/app.component.html:3:56 - error TS2322: Type 'string' is not assignable to type 'boolean'.



    3 <ngx-extended-pdf-viewer [src]="'assets/document.pdf'" useBrowserLocale="true" height="80vh"></ngx-extended-pdf-viewer>

                                                         ~~~~~~~~~~~~~~~~

    src/app/app.component.ts:5:16

    5   templateUrl: './app.component.html',

                     ~~~~~~~~~~~~~~~~~~~~~~

    Error occurs in the template of component AppComponent.

The hack to get this all working was changing `useBrowserLocale="true"` to `[useBrowserLocale]="true"` as noted 
below. 

    <ngx-extended-pdf-viewer [src]="'assets/document.pdf'" [useBrowserLocale]="true" height="80vh"></ngx-extended-pdf-viewer>

Once that was in place, I was able to test the upgrade and confirm single page PDF now preview and print as just a 
single page PDF. 