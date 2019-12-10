#!/bin/bash

source ./config/gpmtr_config.ini

mkdir -p $GPMTR_LOGDIR

# ./run_sys_rsc.sh 5 5000 > ./log/sys_stat.log 2>&1 &
./monitor_resource_usage.sh 5 $TIME_COUNT > ./log/sys_stat.log 2>&1 &

# ./run_qqit.sh &
./monitor_gpmtrdb.sh &

# ./run_commit.sh &
./run_commit.sh &

# ./run_check.sh &
./run_transaction.sh &

# ./run_crt_tb.sh &
./run_create_drop_tables.sh &

# ./run_load.sh &
./run_generate_load.sh &

sleep $SLEEP_TIME

./kill_gpmtrdb.sh
