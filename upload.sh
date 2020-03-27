#!/bin/sh
upload()
{
        project_root=$1
        cd $project_root
        code_version=`git log -1|sed -n '1p'|cut -b 8-`
        cu_time=`date '+%Y%m%d-%H%M%S'`
        branch_name=`git branch -vv|grep \*|cut -d / -f 2|cut -d ] -f 1`
        echo $code_version
        echo $cu_time
        echo $branch_name
        cd $project_root/karaf/sdotn-distribution/target
        pwd
        versionpackage=`ls sdotn*.tar.gz`

        echo $versionpackage  + "https://artxa.zte.com.cn:8081/artifactory/zxsd-otn-snapshot-generic/controller/sdotn~$branch_name~$code_version~$cu_time.tar.gz"
        curl -u user:password -T $versionpackage "https://artxa.zte.com.cn/artifactory/zxsd-otn-snapshot-generic/controller/sdotn~$branch_name~$code_version~$cu_time.tar.gz"
        mv $versionpackage sdotn~$branch_name~$code_version~$cu_time.tar.gz
        echo "\n\rftp://user:password@10.85.156.90:6666/controller_version/sdotn~$branch_name~$code_version~$cu_time.tar.gz\r\n"
        #scp  -v ./sdotn~$branch_name~$code_version~$cu_time.tar.gz   root:zte123@10.85.156.90:/var/ftp/pub/sdotn~$branch_name~$code_version~$cu_time.tar.gz
        #curl -3 -u user:password -T $2 "http://artxa.zte.com.cn:8081/artifactory/zxsd-otn-snapshot-generic/controller/sdotn~$branch_name~$code_version~$cu_time.tar.gz"
        }
upload $1
