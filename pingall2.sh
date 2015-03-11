#!/bin/sh
date>>ping.log
for ip in `cat iplist.ini`
  do
  #if ping -c 2 $ip > /dev/null 2>&1
  if ping -c 2 $ip
  then
    echo  "$ip UP">>./ping.log
  else
    echo  "$ip DOWN">>./ping.log
  fi
done 