#!/bin/bash

TOPOST=/home/gozar/Dropbox/Elements/RyanCollins.org/ToPost/*.markdown
SITE=/home/gozar/Development/ryancollins.org

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

