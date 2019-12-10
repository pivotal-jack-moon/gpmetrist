#!/bin/bash

source config/gpmtr_config.ini
TIME=`date '+%Y%m%d %H:%M'`

GPDB_VERSION1="4.3.11.3"
GPDB_VERSION2="4.3.32.1"
GPDB_VERSION3="4.3.33.4"

if [ ! -d gpmtr-log-$GPDB_VERSION1 ] || [ ! -d gpmtr-log-$GPDB_VERSION1 ] || [ ! -d gpmtr-log-$GPDB_VERSION1 ]; then
    echo "One of Log directories does not exist!"
    exit
fi

for i in `echo "commit.sh create_drop_tables.sh transaction.sh generate_load.sh"`
do
        paste ./gpmtr-log-$GPDB_VERSION1/$i.out ./gpmtr-log-$GPDB_VERSION2/$i.out ./gpmtr-log-$GPDB_VERSION3/$i.out
done
