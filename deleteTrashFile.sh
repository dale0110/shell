#!/bin/bash
function log () {

    echo "[`date +%F-%T`] $1" >> $LOGDIR/platform.log
}


rm -rf /tmp/stdout*
find /home/ubuntu/.m2/repository/com/zte/sdotn/sdotn-karaf-distribution/ -name "*.tar.gz"|xargs rm -rf
find /home/ubuntu/.m2/repository/com/zte/sdotn/sdotn-karaf-distribution/ -name "*.zip"|xargs rm -rf
sudo  rm -rf /var/lib/docker/tmp
