cat ./log3.4.3.11.3/commit.sh_1.log  | grep commit.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1","$9}' > ./log3.4.3.11.3/commit1.out
cat ./log3.4.3.32.1/commit.sh_1.log  | grep commit.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1","$9}' > ./log3.4.3.32.1/commit1.out
cat ./log3.4.3.33.4/commit.sh_1.log  | grep commit.sh |grep -n "" |  sed 's/:/|/g' | awk -F"|" '{print $1","$9}' > ./log3.4.3.33.4/commit1.out
paste ./log3.4.3.11.3/commit1.out ./log3.4.3.32.1/commit1.out  ./log3.4.3.33.4/commit1.out
