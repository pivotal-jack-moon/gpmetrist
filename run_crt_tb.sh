#!/bin/bash

SLEEP=0.1
NUM=1
CNT=3000

for j in `seq 1 ${CNT}`
do 
    for i in `seq 1 ${NUM}`
    do
         ./crt_tb.sh $i &
         sleep $SLEEP 
    done
wait
done
