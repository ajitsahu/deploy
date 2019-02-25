#!/bin/bash
mkdir -p /usr/local/newDir
[ $? -ne 0 ] && echo "NG dir" && exit 10
ls -ltr
uname -a
date
whoami
exit 0
