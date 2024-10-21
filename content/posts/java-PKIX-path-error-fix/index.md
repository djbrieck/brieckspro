---
title: "Java PKIX Path Error Fix"
date: 2024-10-21T08:21:09-07:00
draft: false
---

If your getting a PKIX path error like

AccessException: I/O error on GET request for https://avalid.domain/apiCall: PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target; nested exception is javax.net.ssl.SSLHandshakeException: PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target] with root cause

sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target

Here is what I did that fixed the issue.

1. I loaded https://avalid.domain/apiCall in a browser.

2. Viewed the site information by clicking on the lock icon.

3. From there I viewed the connection details "Connection is secure"

4. Then I clicked where it says Certificate is valid.

5. clicked the details tab.

6. Clicked the Copy to File... button.

7. Ran the certificate export wizard process with the DER encoded binary X.509 option selected.

Saved that as missingCert.cer

Imported the missing cert to my java JDK install cacerts file by doing something like the following:

    keytool.exe -import -alias missingETA -keystore C:\JavaJdK\lib\security\cacerts -file C:\missingCert.cer

Then I restarted my java application and re-tried connecting, this time it worked without the PKIX path error.