#!/bin/sh

YEAR=`date +%Y`

cd ~/Dropbox/Elements/RyanCollins.org/ToPost
mv * ~/Development/ryancollins.org/content/${YEAR}/

cd ~/Development/ryancollins.org
make html

