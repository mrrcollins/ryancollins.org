Title: Good bye Wordpress, hello Pelican
Author: mr.rcollins
Date: 2013-05-06 19:43
Slug: good-bye-wordpress-hello-pelican
Category: Software
Tags: wordpress, pelican, python, geek

This website has undergone various transformations over the last 10 years. Looking back at the first incarnations from 2003 shows a site that reminds me a lot of current day Facebook and Twitter. An example of my words of wisdom from 2003:

>And tonight marks the end of a great TV series that it seemed like nobody was watching. Buffy the Vampire Slayer ends its seven season run with the episode "Chosen".
 
>I feel that this series never got the recognition it deserved, with such great episodes like Hush and Once more with Feeling, the creator Joss Whedon was never afraid to totally change your perception of characters. 

>At least Angel will be back this fall, and I've been buying the Buffy DVDs. The plan is to watch Season 2 this fall on Tuesday nights.

(I now own the entire series of Buffy on DVD, just in case you were worried)

In those days I was running Postnuke, and apparently by 2005 I had switched over to Wordpress, which I had used up until last month. I have nothing against Wordpress, and for a majority of users, Wordpress is the way to go. For myself, I was getting tired of administrating the site more than writing and I wanted more speed without jumping through a bunch of hoops. So last month I switch to [Pelican](http://blog.getpelican.com/)

Pelican is a website generator written in Python. The difference between something like Wordpress and Pelican is that Wordpress parses each web page as a user views it while Pelican generates the site ahead of time as html pages that can be uploaded anywhere. This means I can host my website any place that supports static web pages. I'm currently using a virtual private service (VPS) to host my website. When I'm tired of administrating my VPS, I can easily switch to publishing on Amazon S3. Other options include the *Public* folder in Dropbox or in Google Drive.

Another aspect of Pelican I really like is the ability to check my entire site into version control (git in my case). With version control, I can easily work on new branches of the site without disturbing the current site. And, if you're bored, you can [fork the repo of the site at Github](https://github.com/mrrcollins/ryancollins.org).

My comments were already switched over to Disqus, and I was able to mimic the same urls from Wordpress in Pelican. This allowed me to use my Disqus comments as is.

There are two pieces that I need to work on. One is to set up some way to schedule posts, and the other is a theme that's not the default. Oh, I also need to go through all my old posts and fix the categories. Wordpress allowed multiple categories per post, Pelican does not.