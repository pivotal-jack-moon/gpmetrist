#!/bin/bash
#

psql -d $GPMTR_DB -c "
create table $GPMTR_SQTB
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
distributed by (a1) ;
"

for NUM in `seq $GPMTR_SQTB_NUM`
do
    echo $NUM
    psql -d $GPMTR_DB -c " create table $GPMTR_SQTB$NUM ( like $GPMTR_SQTB) distributed by (a1) ;"
done
