ps -ef|grep maven|grep -v grep|awk '{print $2}' |xargs kill -9
ps -ef|grep ci-V2|grep -v grep|awk '{print $2}' |xargs kill -9
ps -ef|grep javaagent|grep -v grep|awk '{print $2}' |xargs kill -9
/home/ubuntu/deleteTrashFile.sh
