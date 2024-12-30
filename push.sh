#!/bin/bash

# set -x
# 28/5/2014 ESM : Version pour SB2BI
# DEBUG_MODE to 0 means no log - set to something different from 0 activate them

DEBUG_MODE=1

HOME="/u01/app/SU_Outils"
JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.392.b08-4.el8.x86_64/jre"
SFTP_ATGP=http://u3recu21:8080/EIMA/DataControl.do
INPUT_REPO=/u01/data/&IDF/&IDTU.txt
OUTPUT_REPO=/&IDF/&IDTU.txt
LOGFILE=/u01/app/SU_Outils/logs/ping_sftp-bck/&IDF_&IDTU.log

if [ $DEBUG_MODE -ne 0 ]; then
        echo "SFTP_ATGP : $SFTP_ATGP" >> $LOGFILE
        echo "INPUT_REPO : $INPUT_REPO" >> $LOGFILE
        echo "OUTPUT_REPO : $OUTPUT_REPO" >> $LOGFILE
fi

# Commande SFTP

exit