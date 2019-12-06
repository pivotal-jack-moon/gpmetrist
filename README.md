# What is GPPerf-Toolkit?
GPPerf-Toolkit is bash shell script to generate some workload by running short queries, transactions and queries to make high load with index in order to simulate as real as it is.
In addition it include feature to record how much time each queries has been spent into log directory. From that it can make statistics page via googld sheet or ms-excel and so on.

# Where is GPPerf-Toolkit from?
It's been produced by Sang-Hee Lee who is Greenplum Database, Advosory Platform Architect in Pivotal Korea in order to cooperate with me.

# Prerequisite

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
    - run check.sh / measure and record logs how long time transactions would take
  - run_crt_tb.sh
    - run crt_tb.sh / create tb_crtN tables and drop them and record logs how long it would take
  - run_load.sh
    - run load.sh / truncate tb_loadN tables and insert data from tb_load table and then measure and record logs how long it would take.
  - kill_all.sh
    - kill all run_* scripts after the certain amount of duration




2.1.crt_tb_load.sh - 부하용 테이블 생성


check.sh - 1.1 숏쿼리 체크용
crt_tb.sh - 테이블 생성, 삭제 측정용
load.sh - 부하쿼리 수행
log
run_check.sh - 일괄실행한것 체크
run_crt_tb.sh - 테이블 생성 일괄실행
run_load.sh - truncate , insert 하면서 부하를 일정하게 생성하게 하기 위한 스크립트 ( index 로 인해서 시간이 지남에 따라 , NUM 개수를 조정해서 disk busy 를 일으킬수 있음 )

run_all.sh
- run_sys_rsc.sh - dsta
- run_commit.sh - commit.sh 를 실행하고 commit 이 얼마나 오래걸리는지를 측정하기 위함
- runc_check_sh - check.sh 를 실행하고 begin 내에 tb_check_? 테이블들을 truncate 시키고 라이트하게 insert 를 반복하는 트랜잭션수행


# Usage


backup
log3.4.3.11.3
log3.4.3.32.1
log3.4.3.33.4
rslt_check.sh
rslt_commit.sh
rslt_commit_elasped_2.sh
rslt_commit_elasped_4.sh
rslt_crt_tb.sh
rslt_load.sh


[ measure ] - 동시에 돌아감 - DB 쿼리성능 측정
commit   - 1 
create / drop table - 1
insert ( short ) quer - load 가 적은 - 5
large insert query - load 가큰 -2
---
부가적인 2가지 - DB 상태보기
run_qqit.sh - qqit.sh 내에 쿼리가 실행되는 시점에 세션 상태 ( commit , Create, Insert, ) - 5초마다 돌아감
run_sys_rsc.sh - 시스템 상태정보 ,cpu, memory, disk ( disk 의 대역폭은 볼수 있으나 busy 상태는 볼수 없음 )

[ summary ]
1. init.sh
- DB 트랜잭션 부하용 테이블 생성 , 적재
- 시스템 부하용 테이블 생성 ( with index ) , 적재

[ log 보기 ]
commit1.out 에 있는 시간으로만 그래프를 그린것임



