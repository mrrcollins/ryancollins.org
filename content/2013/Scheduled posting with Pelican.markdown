Title: Scheduled posting with Pelican
Author: mr.rcollins
Date: 2013-05-26 08:31
Slug: scheduled-posting-with-pelican
Category: Software 
Tags: pelican, website, programming

After my [switch from Wordpress to Pelican](http://localhost:8000/2013/05/06/good-bye-wordpress-hello-pelican/) I realized that there was one feature that I really was missing, the ability to schedule posts in the future. When you have an itch, you scratch it. By using my Linux box at home (you could use an OS X machine also) and Dropbox, I can now schedule posts. 

# Prequisites

On my server I set up Dropbox. There is a script on the Dropbox site that allows you to set it up on **headless** servers (a server without a monitor, keyboard, or mouse). In my DropBox folder, I created a folder called **ToPost**.

# The script

You'll need to adjust the path to *TOPOST* and to the *SITE*.

	:::bash
	#!/bin/bash

	TOPOST=~/Dropbox/Elements/RyanCollins.org/ToPost/*.markdown
	SITE=~/Development/ryancollins.org

	shopt -s nullglob

	YEAR=`date +%Y`
	NOW=`date +"%Y-%m-%d %H:%M"`

	for file in ${TOPOST}
	do
   		DATELINE=`cat "${file}" | grep "^Date: "`
    	if [[ ${DATELINE#* } < ${NOW} ]]; then
        	mv "${file}" "${SITE}/content/${YEAR}"
        	cd "${SITE}"
        	make rsync_upload
    	fi
	done
	
# Scheduling

At the command prompt, run crontab with the -e parameter so we can add a scheduled job:

	ryan@serverbot:~$ crontab -e
	
and add a line to our script to run it every 15 minutes:

	*/15    *   *   *   *    /home/ryan/Development/ryancollins.org/dbupdate.sh
	
