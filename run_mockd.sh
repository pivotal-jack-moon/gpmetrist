for i in `seq 1 200`
do
    ./mockd-linux greenplum -n 1000 -u gpadmin -d testdb -t inl_repwfmetr_inf &
done
