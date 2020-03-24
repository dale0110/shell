#!/bin/bash
rm -rf /home/ubuntu/html
rm -rf /home/ubuntu/html.tar.gz
python /home/ubuntu/gitstats-master/gitstats /home/ubuntu/odl-controller /home/ubuntu/html

tar -czvf   html.tar.gz html/
