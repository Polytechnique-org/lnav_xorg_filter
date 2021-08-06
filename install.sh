#!/bin/sh

path="$(LANG=C lnav -i mail_log.json 2>&1 | cut -d' ' -f3)"
if [ -f "$path" ];
then
  cp resolve.lnav msgid.lnav "$(dirname "$path")"
else
  echo "don't know where to install scripts"
fi
