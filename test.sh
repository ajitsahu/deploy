#!/bin/bash
test -d /usr/local/testDir || mkdir -p /usr/local/testDir
[ $? -ne 0 ] && echo "NG dir" && exit 10
chown newuser /usr/local/newDir
[ $? -ne 0 ] && echo "NO user" && exit 20
uname -a
exit 0
