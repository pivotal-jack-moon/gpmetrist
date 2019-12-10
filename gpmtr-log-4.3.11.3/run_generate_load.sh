#!/bin/bash

SLEEP=0.1
NUM=2
CNT=1000

for j in `seq 1 ${CNT}`
do
    for i in `seq 1 ${NUM}`
    do
         ./generate_load.sh $i &
         sleep $SLEEP
    done
wait
done
