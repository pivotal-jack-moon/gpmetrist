#!/bin/bash
#
psql -d $GPMTR_DB -c " insert into $GPMTR_SQTB select i, i, i, i, i, i, i, i, i, i, i, i from generate_series(1, 10) i;"
