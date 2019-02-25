#!/bin/bash
mkdir -p /usr/local/newDir
[ $? -ne 0 ] && echo "NG dir" && exit 10
chown newuser /usr/local/newDir
uname -a
exit 0
