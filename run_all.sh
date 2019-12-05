mkdir -p log
./run_sys_rsc.sh 5 5000 > ./log/sys_stat.log 2>&1 &
./run_qqit.sh &
./run_commit.sh &
./run_check.sh &
./run_crt_tb.sh &
./run_load.sh &
sleep 3600
./kill_all.sh 
./kill_all.sh 

