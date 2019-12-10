#!/bin/bash

SLEEP=5
NUM=2
CNT=1000

for j in `seq 1 ${CNT}`
do
    for i in `seq 1 ${NUM}`
    do
         psql -c "SELECT now() logtm, substring(backend_start,1,19) as backend_tiem, now()-query_start as duration_time, usename, client_addr, waiting, procpid, sess_id, substring(current_query,1,20) FROM pg_stat_activity AS query_string WHERE current_query <> '<IDLE>' ORDER BY waiting, duration_time desc;" >> $GPMTR_LOGDIR/qqit.log 2>&1
         sleep $SLEEP
    done
wait
done
