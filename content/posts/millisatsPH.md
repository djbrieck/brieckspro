---
title: "Millisats per what!"
date: 2021-04-24T08:28:28-07:00
draft: false
---

I brief explainer on how to make sense of what your contributing in [podStation](https://podstation.github.io/). As tested and documented for podStation version 1.40.1.


## What the heck is a millisat?

This is all back to metric so we need to look at the [milli](https://en.wikipedia.org/wiki/Milli-) prefix. Which means 10<sup>-3</sup> or <em>thousandths</em> `.001` of a sat. For more information on what is a sat short for satoshis see [What are sats?](https://bitcoinmagazine.com/guides/what-are-sats)

>“Sats,” which is shorthand for “satoshis” is a term used for the smallest possible denomination of BTC: 0.00000001 BTC, or 1 one-hundred-millionth of a bitcoin. The unit is named for the pseudonymous creator of Bitcoin, Satoshi Nakamoto.

## Understanding the default in podStation


The default as of testing in podStation is `3,000,000` millisats per hour, so what is that in sats per minute?

To figure this out take `3000000 * .001 = 3000` Which means 3000 sats per hour.


And since there are 60 minus per hour divide 3000 by 60 to get the sats per minute.

`3000 / 60 = 50`

So the default in podStation is <strong>50</strong> sats per minute

## Set your value

With the information above your able to do the calculations now and set the value slider appropriately.


## The lazy way with the JavaScript millisats to sats calculator 

<em>At this point let the fun numerology begin... </em>

<label> Millisats</label> 
<input type="number" id="msh" name="MilliSatPerHour" onkeyup="satsCalculator()">

<label> Sats per hour: </label> <span id="sph"></span> 

<label> Sats per minute: </label> <span id="spm"></span> 
<script>
    function satsCalculator(){
        milliSats = document.getElementById('msh').valueAsNumber;
    
        satsPerHour = milliSats * .001;
        document.getElementById('sph').innerHTML = satsPerHour;
        
        satsPerMinute = satsPerHour / 60;
        document.getElementById('spm').innerHTML = satsPerMinute;        
    }
</script>

    <script>
        function satsCalculator(){
            milliSats = document.getElementById('msh').valueAsNumber;
    
            satsPerHour = milliSats * .001;
            document.getElementById('sph').innerHTML = satsPerHour;
        
            satsPerMinute = satsPerHour / 60;
            document.getElementById('spm').innerHTML = satsPerMinute;        
        }
    </script>