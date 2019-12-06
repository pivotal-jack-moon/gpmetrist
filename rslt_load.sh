cat ./log3.4.3.11.3/load.sh_1.log  | grep load.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1"\t"$9}' > ./log3.4.3.11.3/load1.out
cat ./log3.4.3.32.1/load.sh_1.log  | grep load.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1"\t"$9}' > ./log3.4.3.32.1/load1.out
cat ./log3.4.3.33.4/load.sh_1.log  | grep load.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1"\t"$9}' > ./log3.4.3.33.4/load1.out
paste ./log3.4.3.11.3/load1.out ./log3.4.3.32.1/load1.out  ./log3.4.3.33.4/load1.out
