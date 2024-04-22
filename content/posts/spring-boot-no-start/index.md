---
title: "Spring Boot jar Not Starting and no error or console output showing"
date: 2024-04-22T13:17:20-07:00
draft: false
---

If your only seeing output like the following when trying to start your spring boot
applications jar here may be what is going on for you too.

        .   ____          _            __ _ _
        /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
       ( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
        \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
         '  |____| .__|_| |_|_| |_\__, | / / / /
        =========|_|==============|___/=/_/_/_/
    :: Spring Boot ::                (v3.2.4)

when trying to start your spring boot app. And are not seeing any errors on the console
nor log file error output. Here is another thing that may cause this. Was not finding
an answer over at [StackOverflow - Spring Boot application suddenly stops after outputting logo and version on Eclipse](https://stackoverflow.com/questions/49030958/spring-boot-application-suddenly-stops-after-outputing-logo-and-version-on-eclip)

## A cause for the lack of starting in my case

In my case the app was already running as the same user but started by systemd script.
xxx.jar status was returning not running. And there did appear to be stale 
[PIDs](https://en.wikipedia.org/wiki/Process_identifier) lying around which were
cleaned up upon calling xxx.jar stop. But either way the app was still running and
the original jar was deleted but still having an active process on the
system, that appeared to be preventing the new jar from fully starting.

## The Fix kill the still running process and try again

Ended up doing something like the following to find the process id to
[kill](https://en.wikipedia.org/wiki/Kill_(command)) the still running spring boot
application:

    ps -aux | grep java
    kill process_id_found_for_the_still_running_jar

After I was able to get everything actually stopped I redeployed and started
xxx.jar again and the application started and ran as expected.

