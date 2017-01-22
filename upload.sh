#!/bin/sh
set -e
#set -x


if [ -z ${HOST} ]; then
  echo 'You must defined HOST in your env path'
  exit
fi

if [ -z ${USER} ]; then
  echo 'You must defined USER in your env path'
  exit
fi

if [ -z ${PASS} ]; then
  echo 'You must defined PASS in your env path'
  exit
fi

if [ -z ${TARGETFOLDER} ]; then
  echo 'You must defined TARGETFOLDER in your env path'
  exit
fi

if [ -z ${SOURCEFOLDER} ]; then
  echo 'You must defined SOURCEFOLDER in your env path'
  exit
fi


lftp -f "
open $HOST
user $USER $PASS
lcd $SOURCEFOLDER
mirror --reverse --delete --verbose $SOURCEFOLDER $TARGETFOLDER
bye
"
