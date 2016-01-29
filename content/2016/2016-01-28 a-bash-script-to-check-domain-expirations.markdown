Title: A bash script to check domain expirations
Author: mri_rcollins
Date: 2016-01-28 20:29
Slug: a-bash-script-to-check-domain-expirations
Category: Software
Tags: domains,bash

I have a bad habit, and that's of buying domain names. I have about 20, with several different registrars. If I was smart, I would consolidate them under one registrar, but, even then, checking expirations on the domains is a pain. I usually have autorenew turned on, but I still like to know when they are getting close to expiration. 

Before re-inventing the wheel, I did a Google search, and found [Domain Expiration Check Shell Script](http://www.cyberciti.biz/tips/domain-check-script.html). It worked pretty well, except for a few top level domains like .me which didn't work. I modified the script, and just had to put some finishing touches on it today (.com, .net,  and .org was broken). Check [out the gist of the script on Github](https://gist.github.com/mrrcollins/9a668109fa8a97f9fb90). 

I put all of my domains in a text file, and can then run it with ```./domain-check -f mydomains.txt```. It's pretty cool.
