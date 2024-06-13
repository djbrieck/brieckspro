---
title: "Fixing Could not transfer artifact from/to central PKIX path building failed"
date: 2024-06-12T19:25:25-07:00
draft: false
---

Starting off and just skimming the below error, I can already tell that I have a certificate issue that is going to require an import of some kind of certificate, a big hint is the "PKIX" term. But the main question is what exactly needs to be imported, I was not sure at first.

Here is the error with projects names changed:

    [ERROR] Failed to execute goal on project project-web: Could not resolve dependencies for project project-web:jar:x.xx.x: Failed to collect dependencies at org.glassfish.jersey.inject:jersey-hk2:jar:2.26: Failed to read artifact descriptor for org.glassfish.jersey.inject:jersey-hk2:jar:2.26: Could not transfer artifact org.glassfish.jersey.inject:jersey-hk2:pom:2.26 from/to central (your or your companies artifactory url here) PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target -> [Help 1]
    org.apache.maven.lifecycle.LifecycleExecutionException: Failed to execute goal on project project-web: Could not resolve dependencies for project project-web:jar:x.xx.x: Failed to collect dependencies at org.glassfish.jersey.inject:jersey-hk2:jar:2.26

Here were my initial thoughts:

- I need to find some kind of certificate relating to jersey dependency listed.
- I need to add a cert for the public maven repo listed.

Nope, none of those pay no attention to dependency being referenced in this case since we are having a general problem transferring through our local Artifactory, and not having an issue with the referenced dependency in this case. The dependency is readily available [Maven repo link for jersey-hk2](https://mvnrepository.com/artifact/org.glassfish.jersey.inject/jersey-hk2/2.26).


The fix in this case is not trying to track down certificates relating to org.glassfish.jersey.inject:jersey-hk2 but instead focus on the local instance of Artifactory you are trying to connect through, in my case I need to import certificates from there, and that is what I ended up doing that finally worked.

Browse to your locally hosted artifactory url in a browser and export the certificate saving it to file.

Import that certificate using the keytool process for the JDK you are using for that project, and you should be back in business.

[Fixing – PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target](https://aggarwalarpit.wordpress.com/2019/07/19/fixing-pkix-path-building-failed-sun-security-provider-certpath-suncertpathbuilderexception-unable-to-find-valid-certification-path-to-requested-target/) really helped me get on the right track otherwise I was going down the wrong paths to fix this error.