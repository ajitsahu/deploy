#!/bin/bash
test -d /usr/local/testDir || mkdir -p /usr/local/testDir
[ $? -ne 0 ] && echo "NG dir" && exit 10
chown cloud_user /usr/local/testDir
[ $? -ne 0 ] && echo "NO user" && exit 20
df -h
exit 0
