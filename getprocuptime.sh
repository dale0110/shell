#!/bin/bash
function show_elapsed_time()
{
        user_hz=$(getconf CLK_TCK) #mostly it's 100 on x86/x86_64
        pid=$1
        jiffies=$(cat /proc/$pid/stat | cut -d" " -f22)
        sys_uptime=$(cat /proc/uptime | cut -d" " -f1)
        last_time=$(( ${sys_uptime%.*} - $jiffies/$user_hz ))
        echo "the process $1 lasts for $last_time seconds."
        echo "process $1 running $(($last_time/3600)) Hour $((($last_time%3600)/60)) minutes  $(($last_time%60)) seconds"
}

show_elapsed_time `ps -ef|grep java|grep -v grep|awk '{print $2}' `
