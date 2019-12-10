#!/bin/bash
#

psql -d $GPMTR_DB -c "
create table $GPMTR_TRXTB
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
distributed by (a1);
"

for NUM in `seq $GPMTR_TRXTB_NUM`
do
    echo $NUM
    psql -d $GPMTR_DB -c " create table $GPMTR_TRXTB$NUM ( like $GPMTR_TRXTB) distributed by (a1) ;"
    psql -d $GPMTR_DB -c " create index idx1_$GPMTR_TRXTB$NUM on $GPMTR_TRXTB$NUM (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);"
done

