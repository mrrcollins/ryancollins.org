Title: Jumping to multiple hosts with ssh behind a gateway
Author: mr.rcollins
Date: 2016-01-19 09:55
Slug: jumping-to-multiple-hosts-with-ssh-behind-a-gateway
Category: Software
Tags: ssh,proxy

At home I have several hosts that I need to ssh into at various times. Unfortunately, since IPv6 is widely deployed, I am stuck sshing into one host that is publically accessible, and from there sshing into other hosts. Cumbersome to say the least, but it does look cool when I'm showing it off.

Anyway, you can automate the connection with netcat on the gateway host. I like to put my ssh commands into my ~/.ssh/config file so then I don't have to remember anything. To jump to an internal host from the gateway I add the following to my ~/.ssh/config file on the client (most notably, [my 2010 MacBook Pro](http://eduk8.me/2016/01/teaching-an-old-macbook-pro-new-tricks/)).

```
Host macmini
	hostname LOCALIP
	user gadmin
	ProxyCommand ssh USER@GATEWAY nc %h %p
```

Replace LOCALIP with the address of the host to which you want to jump, and replace USER@GATEWAY with the gateway's username and address. You can use other hosts defined in your ~/.ssh/config file, so if you have a host for GATEWAY, you can use it.
