#!/bin/bash
set -xe

NAME=$USER
DIR=`pwd`

line="*/5 * * * * export DISPLAY=:0 && cd $DIR && ./battery.sh > /tmp/cronlog.log 2>&1"
(/usr/bin/crontab -u $NAME -l; echo "$line" ) | /usr/bin/crontab -u $NAME -
