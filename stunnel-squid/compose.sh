#!/bin/bash

export cdir=`cd $(dirname $0); pwd`

docker-compose -f $cdir/docker-compose.yml up -d --force-recreate --remove-orphan
