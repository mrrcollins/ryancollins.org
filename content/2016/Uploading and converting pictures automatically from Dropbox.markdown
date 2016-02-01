Title: Upload and converting pictures automatically from Dropbox.markdown
Author: mr.rcollins
Date: 2016-02-01 09:42
Category: Software
Tags: dropbox,pictures

I've been using Pelican to publish this website for awhile now, and one of the things I wanted to do was to be able to post from my phone and include pictures. To accomplish this I wrote a script that checks the upload folder in dropbox, and if there is a file, it will re-size the pictures to 4 different sizes and upload it to Amazon S3. I can then easily link to any of the sizes of pictures for my posts.

```

#!/bin/bash

TOUPLOAD=/Path/to/check/for/pics/*
SAVEUPLOADED=/Path/to/save/uploaded/pics
S3BUCKET="BUCKET/for/pics"
S3CMD=/usr/local/bin/s3cmd
DIR=/Path/to/html/file/that/has/links/to/pics
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
    echo "<html><head><title>Blog Pics</title></head><body><ul>" > ${DIR}
    ${S3CMD} ls s3://${S3BUCKET}/ | sort -r | cut -c 69- | xargs -I filename echo "<li><a href='http://${S3BUCKET}/filename'>filename</a>" >> ${DIR}
    echo "</ul></body></html>" >> ${DIR}
fi

```

This requires ImageMagick to be installed for the convert command. Once I have the script written I set up crontab to run the script every minute.
