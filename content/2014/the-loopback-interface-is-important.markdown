Title: The loopback interface is very important
Author: mr.rcollins
Date: 2014-01-03 13:04
Slug: the-loopback-interface-is-very-important
Category: Software
Tags: ifconfig,loopback

This is more of a note to remind me how to fix it next time, but it could come
in handy for others in the same situation.

I restarted my virtual private server this morning, and after it came back up I
noticed none of the websites would load. The server runs
[Varnish](https://www.varnish-cache.org/) as a front end to all the websites,
and all it was doing was throwing up 503 errors and guru meditations. This means
that varnish can't connect to any web server. The websites on the host are
served by nginx and apache. I double checked that they were running and that
they were on their correct ports with ```netstat -tulpn```:

    tcp        0      0 0.0.0.0:8008            0.0.0.0:*               LISTEN      391/apache2
    tcp        0      0 0.0.0.0:88              0.0.0.0:*               LISTEN      12365/nginx.conf

Ok, everything is running, why won't it work!! Next is to try to telnet to the
servers:

    telnet localhost 8008

That's odd, it never connects. Let me try it from my computer (IP address
obscured. Why? I don't know, it seems like a good idea :-).

    telnet 75.255.255.255 8008

It connects right away. So for some reason, the server can't connect to other
services on itself, even localhost. After some searching I came across a post
that mentions that sometimes the loopback interface doesn't come up. I check:

    root@vps:~# ifconfig
    venet0    Link encap:UNSPEC  HWaddr 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00
              inet addr:127.0.0.2  P-t-P:127.0.0.2  Bcast:0.0.0.0  Mask:255.255.255.255
              UP BROADCAST POINTOPOINT RUNNING NOARP  MTU:1500  Metric:1
              RX packets:32802 errors:0 dropped:0 overruns:0 frame:0
              TX packets:35269 errors:0 dropped:52 overruns:0 carrier:0
              collisions:0 txqueuelen:0
              RX bytes:10716892 (10.7 MB)  TX bytes:25360227 (25.3 MB)

    venet0:0  Link encap:UNSPEC  HWaddr 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00
              inet addr:75.255.255.255  P-t-P:75.127.3.166  Bcast:0.0.0.0  Mask:255.255.255.255
              UP BROADCAST POINTOPOINT RUNNING NOARP  MTU:1500  Metric:1

I'll be a monkey's uncle, the loopback interface isn't up! A quick ```sudo
ifconfig lo up``` and I am back in business!
