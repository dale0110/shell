#!/bin/bash
lftp -u user,user123 sftp://10.85.156.90:/pub/controller_version/ <<EOF
    #cd ${REMOTE}
    #put ${LOCAL}
    #bye
lcd $1/karaf/sdotn-distribution/target/
#prompt
#hash
mput *.tar.gz
exit
bye
EOF
