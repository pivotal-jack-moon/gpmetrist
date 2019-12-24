# What is GPMetrist?
GPMetrist is bash shell script to generate some workload by running short queries, transactions and queries to make high load with index in order to simulate as real as it is.
In addition it include feature to record how much time each queries has been spent into log directory. From that it can make statistics page via googld sheet or ms-excel and so on.

# Where is GPMetrist from?
It's been produced initially by Sang-Hee Lee who is Greenplum Database, Advosory Platform Architect in Pivotal Korea in order to simulate real wrokload and to reproduce the ceratin issue.
and project names, file names and a few codes has been changed by Jack Moon.

# Prerequisite
- GPDB 4, 5, 6 or later version
- Bash

# Table of Contents
In order to simulate similar workload running short queries / transaction queries and inserting a lot of data in the tables indexed will be run repeatedly in the certain period of time.

- README.md

- init_gpmtr.sh
  - create_gpmtr_sqtb.sh
    - Creating tb_check table and tb_checkN tables to insert data by short queries and transactions in order to check if short queries are slow.
  - insert_data_sqtb.sh
    - Inserting initial data about 10 records by short queries
  - create_gpmtr_trxtb.sh
    - Create table for high load with creating indexes
  - insert_data_trxtb.sh
    - Inserting initial data about 0.1 millian records into tb_load table. Especially it would make about 100% disk util by IOPS.

- run_gpmtrdb.sh
  - monitor_resource_usage.sh
    - Monitor and collect system, cpu, memory, network and disk usage for master and segment nodes
  - monitor_gpmtrdb.sh &
    - Monitor and collect sessions status such as commit, create, insert and so on every 5 seconds while all queries are runing in run_all.sh
  - run_commit.sh
    - Run commit.sh / measure and record logs how long time begin and commit only would take
  - run_transaction.sh &
    - Run transaction.sh / measure and record logs how long time truncate table and light transactions would take
  - run_create_drop_tables.sh &
    - Run crt_tb.sh / create tb_crtN tables and drop them and record logs how long it would take
  - run_generate_load.sh &
    - Run load.sh / truncate tb_loadN tables and insert data from tb_load table in order to make same workload regularly and then measure and record logs how long it would take.
    - While it's giving same workload and disk util status could be about 100% as time goes by and by creating indexes and as adjusting value of NUM.
  - kill_gpmtrdb.sh
    - Kill all scripts running after the certain amount of duration ( default : 1 hour )

- get_gpmtr_statistics.sh
  - Extract the part of time consumed by queries and the count that queries run from *.out files
- mk_gpmtr_statistics.sh
  - Display the part of time consumed by queries and the count that queries run from *.out files

# Usage
1. create database
~~~
$ createdb testdb
~~~
2. run init_gpmtr.sh
~~~
$./init_gpmtr.sh
~~~
3. run run_gpmtrdb.sh
~~~
./run_gpmtrdb.sh
~~~
4. run get_gpmtr_statistics.sh
~~~
./get_gpmtr_statistics.sh
~~~
5. run mk_gpmtr_statistics.sh
~~~
./mk_gpmtr_statistics.sh
~~~
6. Copy the output of mk_gpmtr_statistics.sh script into google sheets or MS-Excel and then make graphs


To insert one million rows into Towns
~~~
insert into towns (
    code, article, name, department
)
select
    left(md5(i::text), 10),
    md5(random()::text),
    md5(random()::text),
    left(md5(random()::text), 4)
from generate_series(1, 1000000) s(i)
~~~
