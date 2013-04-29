Title: I've been hacked and you can learn from my mistakes. :-)
Date: 2011-08-28 16:52
Author: mr.rcollins
Category: blog
Tags: hacked, wordpress
Slug: ive-been-hacked-and-you-can-learn-from-my-mistakes

**Hacked!**

Yes, I let my Wordpress installation rot. And it's entirely my fault.
Wordpress makes it so easy to keep it up to date now that there is no
excuse, so I do accept full responsibility! I'm lucky in the fact that
all the hacker  
did was rewrite my .htaccess file to redirect visitors to a malware
hosted site.

After examining the Wordpress database, it appeared that it hadn't been
changed by the attacker, so I went about installing a new copy of
Wordpress. It went pretty smooth, and for right now I'm going for a
minimum amount of  
plugins and keeping the design pretty basic. As I was restoring, I
began to think of what the hacker might of had access to and what I
needed to do to protect myself.

1.  I don't know if the attacker had access to the filesystem or could
    only append lines onto the .htaccess file. Why is this important?
    Your MySQL password for your Wordpress installation is listed in the
    wp-config.php file. If you allow access to your MySQL server from
    the outside world, an attacker armed with this username and password
    is free to make changes to your database, even making themselves an
    administrator. So before doing the installation, I changed my
    password to MySQL.

2.  One plugin I use with Wordpress is [Automatic Wordpress Backup][].
    This makes daily backups of my Wordpress installation and stores
    them on Amazon S3. What I realized after this hack was that if the
    attacker had gotten access to administrator privileges, he could
    have wiped out every single backup I have. Worse yet, they could
    gain access to my access keys for Amazon S3. I went in and changed
    my Amazon S3 access keys.

**What I'm doing differently**

1.  I will be keeping up on Wordpress updates!!!

2.  The wp-config.php file, which contains some very important
    information on your Wordpress installation does not need to live in
    a web accessible directory such as your main Wordpress installation.
    I moved it up a directory. For example, if you installed Wordpress
    in \~/public-html/, you can put wp-config.php in \~/.

3.  Once my installation was completed, I created a user for myself and
    made it an administrator. I then logged in as my new administrator
    account and deleted the default administrator. This protects against
    hacks that target the default admin account.

4.  I switched to Disqus for comments. The blog only had one user, and I
    didn't want to worry about being hacked giving up reader
    information. By using Disqus, I let them handle it. :-)

5.  I installed the CHAP Secure Login plugin for Wordpress. This
    protects logins by encrypting the password. Since I don't have an
    SSL certificate, my password would be "in the clear" without this
    plugin.

6.  I will be automating the download of my backups from Amazon S3.

  [Automatic Wordpress Backup]: http://www.webdesigncompany.net/automatic-wordpress-backup/
