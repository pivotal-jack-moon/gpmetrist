#!/bin/bash

source /usr/local/greenplum-db/greenplum_path.sh

while true; do
    gpssh -f ~/hostfile -v -e "ps -eo pcpu,pmem,args | sort -k 1 -r | head -10 | grep -v grep | grep checkpoint" >> /home/gpadmin/gpmetrist/checkpoint_cpu_usage.txt
done
