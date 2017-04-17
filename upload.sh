#!/bin/sh
set -e
#set -x


if [ -z ${CNPM_HOST} ]; then
  echo 'You must defined CNPM_HOST in your env path'
  exit
fi

if [ -z ${CNPM_USER} ]; then
  echo 'You must defined CNPM_USER in your env path'
  exit
fi

if [ -z ${CNPM_PASS} ]; then
  echo 'You must defined CNPM_PASS in your env path'
  exit
fi

if [ -z ${CNPM_TARGETFOLDER} ]; then
  echo 'You must defined CNPM_TARGETFOLDER in your env path'
  exit
fi

if [ -z ${CNPM_SOURCEFOLDER} ]; then
  echo 'You must defined CNPM_SOURCEFOLDER in your env path'
  exit
fi


lftp -f "
open $CNPM_HOST
user $CNPM_USER $CNPM_PASS
lcd $CNPM_SOURCEFOLDER
mirror --reverse --delete --verbose $CNPM_SOURCEFOLDER $CNPM_TARGETFOLDER
bye
"
