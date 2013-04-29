Title: Speed up your website and get IPv6 compatibility for free!
Date: 2011-09-29 17:38
Author: mr.rcollins
Category: blog
Tags: caching, cloudflare, wordpress
Slug: speed-up-your-website-and-get-ipv6-compatibility-for-free

Prerequisites
-------------

This is going to be a pretty high tech article, but the benefits
outweigh the work that it requires. I'm going to talk about using
[cloudflare.com][] to cache your website and offer IPv6 compatibility.
For this to work you have to be using your own domain name and have
access to change the namerservers for your domain. If you cannot do
this, then you can't take advantage of [cloudflare.com][].

Caching
-------

To speed up access to a website, the larger sites around the Internet
cache data as close as possible to the end user, usually using some sort
of content delivery network (CDN). For the enduser, that speeds up
access to the website, since instead of a US user having to transfer
data from a UK website, the US user would only need to pull it from a
closer server. There are also other tricks that CDNs use to lower
bandwidth usage and increase speed. Cloudflare acts like a CDN on your
behalf, automatically caching your website around the world.

IPv6
----

IPv6 is the next version of the Internet addressing protocol, set to
replace the current IPv4. If you have an IPv4 address you can't talk to
a user with an IPv6 address and vice versa. Most clients now support
both at once, but until all the connections between you and a website
upgrade their equipment and software to IPv6, you are still going to be
using IPv4 addressing for awhile. This isn't true in Asia, where they've
exhausted their IPv4 addresses and there are users there that are only
getting an IPv6 address. If you only have an IPv6 address, then you only
have access to about 10,000 websites that are set up for IPv6.

Enter Cloudflare
----------------

Once configured, Cloudflare manages connections to your website, caching
the content. And with a simple switch on their website, you can turn on
IPv6 access to your website. [ryancollins.org][] is now on Cloudflare's
network and should be accessible over IPv6.

Should you sign up?
-------------------

I'm going to run it for awhile and see if any issues crop up. I just
noticed the "Threat Alerts" on my dashboard, where Cloudflare already
has blocked a couple of botnets from accessing the site. I've played
around with different caching plugins for Wordpress, but Cloudflare
seems like a lot better solution, especially since it doesn't require
any work. :-)

  [cloudflare.com]: http://cloudflare.com
  [ryancollins.org]: http://ryancollins.org
