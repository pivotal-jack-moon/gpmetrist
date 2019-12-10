#!/bin/bash

source config/gpmtr_config.ini
TIME=`date '+%Y%m%d %H:%M'`

if [ -d "log" ]; then
    mv log gpmtr-log-$GPDB_VERSION-$TIME
else
    echo "Log directory does not exist"
    exit
fi

cd gpmtr-log-$GPDB_VERSION-$TIME

for i in `echo "commit.sh create_drop_tables.sh transaction.sh generate_load.sh"`
do
    for j in `find ./ -name $i"_*"`
    do
      if [ -f "$j" ]; then
        # echo "$i $j"
        cat $j | grep "$i" | grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1"\t"$9}' > $i".out"
      else
        continue
      fi
    done
done
