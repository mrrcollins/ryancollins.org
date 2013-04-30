Title: Linux for 1:1 instead of Chromebooks or iPads
Date: 2013-04-11 16:50
Author: mr.rcollins
Category: Hardware
Tags: 1:1, chromebook, iPad, linux, ubuntu
Slug: linux-for-11-instead-of-chromebooks-or-ipads

(This post is basically me thinking out loud...)

![][]Like many districts, my district is looking at devices for a 1:1
program. The top three devices seem to be Chromebooks, iPads, Windows or
OS X laptops. Costs are the main driving factor for a lot of districts,
which basically means they are choosing between Chromebooks or iPads.
While these devices have their uses, I'm wondering why we aren't looking
at Linux laptops (probably running Ubuntu). There are districts with
districts with Linux laptops, with [Ubermix][] being pretty prevalant.

Ubermix has some neat features, the most important one is the ability
for a student to re-set their laptop on their own [with quick
recovery][]. In my mind, I'm thinking of extending this function along
with what I've learned from my [GozBrowserBox project][]. I would
probably use the idea of Ubermix but with a straight Ubuntu install.

Each laptop would be set up to use [Puppet][] in a serverless manner for
management and the student's home folder would be synced to a Network
Attached Storage device. The Puppet manifests would be synced and ran at
startup, and the home folder syncing would happen only at log in and log
off. Both of these to minimize any bandwidth issues. I haven't quite
figured out how to do user management. It could be done with Puppet for
1:1 managed machines, and use our current directory for shared devices.

This setup would be very, very powerful. Not only could they do
everything a Chromebook could do, but they would give the students
access to software that's not available on the web. This is a very
important consideration for students in 7th grade and lower, since most
websites limit usage by those under the age of 13. Management becomes a
non-issue with a quick recovery setup and Puppet.

Cost per device would be between $300-$350 (without case). Comparable
Chromebooks cost $280-$310 with Google Management, and the iPad mini
starts at $329 (but can't be used with the PARCC tests, so you really
need to start at $399).

What have I missed?

  []: http://dl.ryancollins.org/saigonubuntulinux10.jpg
  [Ubermix]: http://ubermix.org/
  [with quick recovery]: http://ubermix.org/basics.html
  [GozBrowserBox project]: http://ryancollins.org/2013/03/13/re-purpose-old-machines-as-chrome-browser-boxes-introducing-the-gozbrowserbox/
  [Puppet]: https://puppetlabs.com/
