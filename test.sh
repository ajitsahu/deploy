#!/usr/bin/env bash
test -d /usr/local/test || mkdir -p /usr/local/test
[ $? != 0 ] && echo "Dir not created"
exit 0
