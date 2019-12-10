#!/bin/bash
#

BMT_NO=`basename $0`
mkdir -p $GPMTR_LOGDIR

LOGFILE=$GPMTR_LOGDIR"/"$BMT_NO"_"$1".log"

START_TM1=`date "+%Y-%m-%d %H:%M:%S"`

# query start
psql -U gpadmin -d $GPMTR_DB -e >> $LOGFILE 2>&1 <<-!

truncate table $GPMTR_TRXTB$1 ;
insert into $GPMTR_TRXTB$1 select * from $GPMTR_TRXTB;
!
# query end

END_TM1=`date "+%Y-%m-%d %H:%M:%S"`

SHMS=`echo $START_TM1 | awk '{print $2}'`
EHMS=`echo $END_TM1   | awk '{print $2}'`

SEC1=`date +%s -d ${SHMS}`
SEC2=`date +%s -d ${EHMS}`
DIFFSEC=`expr ${SEC2} - ${SEC1}`

echo $BMT_NO"|"$START_TM1"|"$END_TM1"|"$DIFFSEC  >> $LOGFILE
