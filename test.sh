#!/usr/bin/env bash
test -d /usr/local/test1 || mkdir -p /usr/local/test1
[ $? -ne 0 ] && echo "NG file"
cat /etc/sudoers
exit 0
