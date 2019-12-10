#!/bin/bash

psql -d $GPMTR_DB -c "insert into $GPMTR_TRXTB select i, i, i, i, i, i, i, i, i, i, i, i from generate_series(1, 100000) i;"

