#!/bin/bash
#

psql -d $GPMTR_DB -c "
create table $GPMTR_TRXTB
(
a1 TEXT,
a2 TEXT,
a3 TEXT,
a4 TEXT,
a5 TEXT,
a6 TEXT,
a7 TEXT,
a8 TEXT,
a9 TEXT,
a10 TEXT,
a11 TEXT,
a12 TEXT
)
distributed by (a1);
"

for NUM in `seq $GPMTR_TRXTB_NUM`
do
    echo $NUM
    psql -d $GPMTR_DB -c " create table $GPMTR_TRXTB$NUM ( like $GPMTR_TRXTB) distributed by (a1) ;"
    psql -d $GPMTR_DB -c " create index idx1_$GPMTR_TRXTB$NUM on $GPMTR_TRXTB$NUM (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);"
done

