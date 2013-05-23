#!/bin/bash

shopt -s nullglob

YEAR=`date +%Y`
TOPOST=/home/gozar/Dropbox/Elements/RyanCollins.org/ToPost/*.markdown
NOW=`date +"%Y-%m-%d %H:%M"`
for file in ${TOPOST}
do
    echo "Checking ${file}..."
    DATELINE=`cat "${file}" | grep "^Date: "`
    if [[ ${DATELINE#* } < ${NOW} ]]; then
        echo "Time to post"
    fi
done


#mv * ~/Development/ryancollins.org/content/${YEAR}/

#cd ~/Development/ryancollins.org
#make html

