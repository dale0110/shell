#!/bin/sh

counter=1
for url in `cat down.txt`
  do
  echo "$url"
	you-get -x  127.0.0.1:62543 --itag=36  $url
	counter=`expr $counter + 1`
done
