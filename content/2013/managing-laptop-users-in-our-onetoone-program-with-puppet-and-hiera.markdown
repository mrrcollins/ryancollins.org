Title: Managing laptop users in our oneTOone program with Puppet and Hiera
Author: mr.rcollins
Date: 2013-10-31 21:48
Slug: managing-laptop-users-in-our-onetoone-program-with-puppet-and-hiera
Category: Software
Tags: hiera,puppet,users

As we're getting ready to roll out 300 laptops, we had to figure out how we were going to manage the individual users on the laptops. The laptops, running Ubuntu, are already going to be managed with [Puppet](http://puppetlabs.com/). This allows us to take care of all the settings, applications, etc. on the laptops in a central location. After talking to [Gary Larizza](http://projects.puppetlabs.com/users/908) on IRC, he recommended using Hiera to manage the users on the individual machines. Today I think I have it licked, and these are my notes so I don't forget what I did!

I'm very much a beginner with all this, how I'm doing it works for me but may not be the best way to do it. :-) First thing was to create the hiera config file, /etc/puppet/hiera.yaml (apparently you need to restart the puppet master after creating this file):

    ---
    :backends:
      - yaml
    :yaml:
      :datadir: /etc/puppet/hieradata
    :hierarchy:
      - nodeinfo
      - common

Then I created the test data file. Each computer record will be designated by the computer's serial number. Hiera will take serial number and find out which student is to be using the laptop. Puppet will then take this information to make sure the user is created. The nodeinfo file right now contains some test data (/etc/puppet/hieradata/nodeinfo.yaml) Password truncated to fit the screen:

    QP6220KLA4Q:
      user: testuser
      password: $6$eKwQ23ju$AdqZ/OXWZqK7xGSVKWz6yjpUti9nvMxRzqKmZ
    
    H09362SF4PD:
      user: testuser2
      password: $6$eKwQ23ju$AdqZ/OXWZqK7xGSVKWz6yjpUti9nvMxRzqKmZ

Finally the user resource in puppet looks like this:

    $nodeinfo = hiera($::serialnumber)
    user { $nodeinfo['user']:
    ensure  => present,
    shell   => '/bin/bash',
    managehome  => true,
    password    => $nodeinfo['password'],
    }

Now I just need write a script to write out the nodeinfo.yaml file based on the inventory and the student passwords. 