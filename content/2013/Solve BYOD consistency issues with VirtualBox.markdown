Title: Solve BYOD consistency issues with VirtualBox
Author: mr.rcollins
Date: 2013-08-28 10:21
Slug: solve-byod-consistency-issues-with-virtualbox
Category: Software
Tags: byod, 1to1, virtualbox

In my district we are currently planning our 1 to 1 program. We settled on 11.6" laptops running Ubuntu as the device. The problem that has arisen is how to we ensure consistency with students who wish to bring their own laptop. If they were Chromebooks, the BYOD students could just run Chrome. But with the flexibility of Ubuntu comes the complexity for BYOD. That is, until one considers VirtualBox.

[VirtualBox](https://www.virtualbox.org/) is a program that lets you **virtualize** operating systems on your computer. For example, your computer (host)can be running Microsoft Windows, and run a virtual machine of Ubuntu Linux. The virtual machine (guest) is separate from your current system, anything in the virtual machine does not affect the host. The guest can even be running the same operating system, running Microsoft Windows in a virtual machine on a host running Microsoft Windows. There are some legal implications to running Microsoft Windows and Mac OS X in a virtual machine. For Microsoft Windows you will need to purchase an additional license for each copy of Microsoft Windows that you would run in a virtual machine. Under Mac OS X 10.8 you are allowed to virtualize up to 5 virtual machines on Apple hardware. Since we are looking at Ubuntu, these licensing restrictions don't affect us.

With Ubuntu, a standard image can be created with the exact same set up as the laptops. Even management of the virtual machine would be the same. So for our students and teachers, it won't matter whether or not they have a school laptop or their own laptop. Everyone will have the same setup. It's a brilliant solution to issues [that have been brought up on BYOD](http://stager.tv/blog/?p=2397).