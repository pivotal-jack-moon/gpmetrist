#!/bin/bash

SLEEP=0.1
NUM=5
CNT=1000

for j in `seq 1 ${CNT}`
do 
    for i in `seq 1 ${NUM}`
    do
         ./check.sh $i &
         sleep $SLEEP 
    done
wait
done
