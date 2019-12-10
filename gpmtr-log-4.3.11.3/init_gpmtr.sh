#!/bin/bash

source config/gpmtr_config.ini

createdb $GPMTR_DB

# ./1.1.crt_tb_check.sh
./create_gpmtr_sqtb.sh

# ./1.2.ins_tb_check.sh
./insert_data_sqtb.sh

# ./2.1.crt_tb_load.sh
./create_gpmtr_trxtb.sh

# ./2.2.ins_tb_load.sh
./insert_data_trxtb.sh

