---
title: "Angular 6 to 7 Upgrade Fail"
date: 2024-05-28T18:19:38-06:00
draft: true
---

I have some old Angular applications to update.

Just try and do this, why you should not use angular :-0 and let it get to far out of date.

Here is what I was attempting to upgrade [Angular 6 to Angular 7.2](https://angular.dev/update-guide?v=6.0-7.2&l=1)


First run through failed https://stackoverflow.com/questions/56575028/invalid-rule-result-function

For starters, I had a project with core 6.0.3 and cli of 6.0.8

nvm use v8.17.0

Install Angular CLI 6.0.3

ng i -g @angular/cli@6.0.3

ng new angular-six-start

update rxjs version from ^6.0.0 to 6.0.0

npm i

ng serve

Should have working project now ;)

Now before following the angular upgrade steps

update the installed cli to the latest 6.x release which appears to now be 6.2.9

npm i -g @angular/cli@6.2.9

Update the dev dep cli to 6.2.9

ng update @angular/cli@6.2.9

Then lastly update
NG_DISABLE_VERSION_CHECK=1 npx @angular/cli@7 update @angular/cli@7 @angular/core@7


TRy this once more locally but this time change the nodejs 8.17.0a

WORKS, but fails on WINDOWS NT bullshit at work

other useful links referenced
https://github.com/angular/angular-cli/tree/v6.2.9

https://angular.io/guide/versions