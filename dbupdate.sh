#!/bin/bash

TOPOST=/Users/gozar/Dropbox/Elements/RyanCollins.org/ToPost/*.markdown
SITE=/Users/gozar/Development/ryancollins.org

shopt -s nullglob

YEAR=`date +%Y`
NOW=`date +"%Y-%m-%d %H:%M"`

for file in ${TOPOST}
do
    DATELINE=`cat "${file}" | grep "^Date: "`
    if [[ ${DATELINE#* } < ${NOW} ]]; then
        mv "${file}" "${SITE}/content/${YEAR}"
        POST=true
   fi
done

if [[ ${POST} ]]; then
    cd "${SITE}"
    make scheduled_rsync_upload
fi
