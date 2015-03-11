ip=`ifconfig eth0:3 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'`
echo $ip
ifconfig eth0:3 $ip netmask 255.255.255.240
