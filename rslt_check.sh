cat ./log3.4.3.11.3/check.sh_1.log  | grep check.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1"\t"$9}' > ./log3.4.3.11.3/check1.out
cat ./log3.4.3.32.1/check.sh_1.log  | grep check.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1"\t"$9}' > ./log3.4.3.32.1/check1.out
cat ./log3.4.3.33.4/check.sh_1.log  | grep check.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1"\t"$9}' > ./log3.4.3.33.4/check1.out
paste ./log3.4.3.11.3/check1.out ./log3.4.3.32.1/check1.out  ./log3.4.3.33.4/check1.out
