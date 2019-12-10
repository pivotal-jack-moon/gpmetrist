#!/bin/bash
#

psql -d $GPMTR_DB -c "
create table $GPMTR_SQTB
(
a1 int,
a2 int,
a3 int,
a4 int,
a5 int,
a6 int,
a7 int,
a8 int,
a9 int,
a10 int,
a11 int,
a12 int
)
distributed by (a1) ;
"

for NUM in `seq $GPMTR_SQTB_NUM`
do
    echo $NUM
    psql -d $GPMTR_DB -c " create table $GPMTR_SQTB$NUM ( like $GPMTR_SQTB) distributed by (a1) ;"
done
