#!/bin/bash

export cdir=`cd $(dirname $0); pwd`

if [ $# -ne 1 ]; then 
    echo "$0 <squid-server i.e.: 10.145.68.26:3128>"
    exit 1
fi
squid_target=$1

sed 's/__SQUID_TARGET__/'$squid_target'/' $cdir/nginx.conf.tmpl > $cdir/nginx.conf

docker-compose -f $cdir/docker-compose.yml up -d --force-recreate --remove-orphans
