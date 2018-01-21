#!/bin/sh

baseUrl="https://www.youtube.com/watch?v=9xizQn-v7V4&list=PLCUd0NAOIRKs2AuqCkHdLOmn8zO1u8nGT&index="
counter=1
while [ $counter -lt 111 ]
  do
  echo "$baseUrl$counter"
	you-get -x  127.0.0.1:62543 --itag=36  $baseUrl$counter$
	counter=`expr $counter + 1`
done
