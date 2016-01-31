#!/bin/bash

TOUPLOAD=~/Dropbox/Elements/RyanCollins.org/ToUpload/*
SAVEUPLOADED=~/Dropbox/Elements/RyanCollins.org/ToUpload/Uploaded
S3BUCKET="dl.ryancollins.org/blog/pics/2016"
S3CMD=/usr/local/bin/s3cmd
DIR=~/Dropbox/Elements/RyanCollins.org/blogpics.html
UPLOADED=FALSE


if [[ ! -d /tmp/uploadpic ]]; then
    mkdir /tmp/uploadpic
fi

if [[ ! -d ${UPLOADED} ]]; then
    mkdir -p ${UPLOADED}
fi

shopt -s nullglob

for f in ${TOUPLOAD}
do
    if [[ -f ${f} ]]; then
    OUT=/tmp/uploadpic
    FILENAME=${f}
    FULLFILENAME=$(basename "${f}")
    EXT=${FULLFILENAME##*.}
    FILE=${FULLFILENAME%.*}

    echo "Working with ${FILE}.${EXT}"

    echo "Resizing"
    convert "${FILENAME}" -resize 320x240 "${OUT}/${FILE}-xs.${EXT}"
    convert "${FILENAME}" -resize 640x480 "${OUT}/${FILE}-s.${EXT}"
    convert "${FILENAME}" -resize 800x600 "${OUT}/${FILE}-m.${EXT}"
    convert "${FILENAME}" -resize 1024x768 "${OUT}/${FILE}-l.${EXT}"
    convert "${FILENAME}" -resize 2048x1024 "${OUT}/${FILE}-x.${EXT}"

    echo "Uploading"

    find ${OUT} -name "${FILE}*" -print0 | xargs -0 -I upload ${S3CMD} put upload s3://${S3BUCKET}/ --acl-public

    ${S3CMD} put "${FILENAME}" s3://${S3BUCKET}/ --acl-public
    mv "${FILENAME}" ${SAVEUPLOADED}/
    UPLOADED=TRUE
fi
done

if [[ ${UPLOADED} = TRUE ]]; then
    echo "Pics have been uploaded..."
    echo "<html><head><title>RyanCollins.org Blog Pics</title></head><body><ul>" > ${DIR}
    ${S3CMD} ls s3://${S3BUCKET}/ | sort -r | cut -c 69- | xargs -I filename echo "<li><a href='http://${S3BUCKET}/filename'>filename</a>" >> ${DIR}
    echo "</ul></body></html>" >> ${DIR}
fi
