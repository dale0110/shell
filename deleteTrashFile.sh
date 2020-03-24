#!/bin/bash
rm -rf /tmp/stdout*
find /home/ubuntu/.m2/repository/com/zte/sdotn/sdotn-karaf-distribution/ -name "*.tar.gz"|xargs rm -rf
find /home/ubuntu/.m2/repository/com/zte/sdotn/sdotn-karaf-distribution/ -name "*.zip"|xargs rm -rf
sudo  rm -rf /var/lib/docker/tmp
