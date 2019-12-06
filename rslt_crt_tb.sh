cat ./log3.4.3.11.3/crt_tb.sh_1.log  | grep crt_tb.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1"\t"$9}' > ./log3.4.3.11.3/crt_tb1.out
cat ./log3.4.3.32.1/crt_tb.sh_1.log  | grep crt_tb.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1"\t"$9}' > ./log3.4.3.32.1/crt_tb1.out
cat ./log3.4.3.33.4/crt_tb.sh_1.log  | grep crt_tb.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1"\t"$9}' > ./log3.4.3.33.4/crt_tb1.out
paste ./log3.4.3.11.3/crt_tb1.out ./log3.4.3.32.1/crt_tb1.out  ./log3.4.3.33.4/crt_tb1.out
