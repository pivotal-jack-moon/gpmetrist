# What is GPMetrist?
GPMetrist is bash shell script to generate some workload by running short queries, transactions and queries to make high load with index in order to simulate as real as it is.
In addition it include feature to record how much time each queries has been spent into log directory. From that it can make statistics page via googld sheet or ms-excel and so on.

# Where is GPMetrist from?
It's been produced by Sang-Hee Lee who is Greenplum Database, Advosory Platform Architect in Pivotal Korea in order to cooperate with me.

# Prerequisite
GPDB 4, 5, 6 or later version
Bash

# Table of Contents
In order to simulate similar workload running short queries / transaction queries and inserting a lot of data in the tables indexed will be run repeatedly in the certain period of time.

- README.md
- init.sh
  - 1.1.crt_tb_check.sh
    - creating tb_check table and tb_checkN tables to insert data by short queries and transactions in order to check if short queries are slow.
  - 1.2.ins_tb_check.sh
    - inserting initial data about 10 records by short queries
  - 2.1.crt_tb_load.sh
    - create table for high load with creating indexes
  - 2.2.ins_tb_load.sh
    - inserting initial data about 0.1 millian records into tb_load table. Especially it would make about 100% disk util by IOPS.
- run_all.sh
  - run_sys_rsc.sh
    - monitor and collect system, cpu, memory, network and disk usage for master and segment nodes
  - run_qqit.sh
    - monitor and collect sessions status such as commit, create, insert and so on every 5 seconds while all queries are runing in run_all.sh
  - run_commit.sh
    - run commit.sh / measure and record logs how long time begin and commit only would take
  - run_check.sh
    - run check.sh / measure and record logs how long time truncate table and light transactions would take
  - run_crt_tb.sh
    - run crt_tb.sh / create tb_crtN tables and drop them and record logs how long it would take
  - run_load.sh
    - run load.sh / truncate tb_loadN tables and insert data from tb_load table in order to make same workload regularly and then measure and record logs how long it would take.
    - While it's giving same workload and disk util status could be about 100% as time goes by and by creating indexes and as adjusting value of NUM.
  - kill_all.sh
    - kill all run_* scripts after the certain amount of duration ( default : 1 hour )
- rslt_*.sh
  - rslt_check.sh
    - it will take the part of time out from checkX.out file
  - rslt_commit.sh
    - it will take the part of time out from checkX.out file
  - rslt_crt_tb.sh
    - it will take the part of time out from checkX.out file
  - rslt_load.sh
    - it will take the part of time out from checkX.out file

# Usage
1. create database
~~~
$ createdb testdb
~~~
2. run init.sh
~~~
$./init.sh
~~~
3. run run_all.sh
~~~
./run_all.sh
~~~
4. run run_all.sh
~~~
./run_all.sh
~~~
5. run rslt_*.sh
~~~
./run_*.sh
~~~
6. Copy output into google sheets or MS-Excel and the make statistics.
