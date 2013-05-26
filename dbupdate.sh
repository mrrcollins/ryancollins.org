#!/bin/bash

TOPOST=~/Dropbox/Elements/RyanCollins.org/ToPost/*.markdown
SITE=~/Development/repos/ryancollins.org

shopt -s nullglob

YEAR=`date +%Y`
NOW=`date +"%Y-%m-%d %H:%M"`

for file in ${TOPOST}
do
    DATELINE=`cat "${file}" | grep "^Date: "`
    if [[ ${DATELINE#* } < ${NOW} ]]; then
        cp "${file}" "${SITE}/content/${YEAR}"
        cd "${SITE}"
        make html
    fi
done

