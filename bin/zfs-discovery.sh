#!/bin/bash

if [ $1 == "pooldisc" ]; then
    /sbin/zpool list -H -o name | /bin/sed -e '$ ! s/\(.*\)/{"{#POOLNAME}":"\1"},/' | /bin/sed -e '$  s/\(.*\)/{"{#POOLNAME}":"\1"}]}/' | /bin/sed -e '1 i { \"data\":['

elif [ $1 == "fsdisc" ]; then
    /sbin/zfs list -H -o name | /bin/sed -e '$ ! s/\(.*\)/{"{#FILESETNAME}":"\1"},/' | sed -e '$  s/\(.*\)/{"{#FILESETNAME}":"\1"}]}/' | /bin/sed -e '1 i { \"data\":['

elif [ $1 == "health" ]; then # e.g. ./zfs health rpool
    /sbin/zpool list -H -o health $2

elif [ $1 == "fsinfo" ]; then # e.g. ./zfs fsinfo rpool/data compression
    /sbin/zfs get -o value -Hp $2 $3
fi
