#!/bin/bash

cd ./odl-controller/sd-otn/fcmanager
mvn clean install  -Dmaven.javadoc.skip=true -Dcheckstyle.skip=true -Dskip.karaf.featureTest=true

n=1
while [ $n -le 10 ]
do
        mvn clean install  -Dmaven.javadoc.skip=true -Dcheckstyle.skip=true -Dskip.karaf.featureTest=true
        if [ $? -ne 0 ];then
                echo $n
                echo "ERROR!!!!!!!!!!!!!!!!!!!"
                exit 1
        fi

        echo $n
        let n++    #或者写作n=$(( $n + 1 ))
done
