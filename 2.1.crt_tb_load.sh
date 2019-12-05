psql -d testdb -c "
create table tb_load
(
a1 int,
a2 int,
a3 int,
a4 int,
a5 int,
a6 int,
a7 int,
a8 int,
a9 int,
a10 int,
a11 int,
a12 int
)
distributed by (a1) ;
"

for i in `seq 1 10`
do
echo $i
psql -d testdb -c " create table tb_load$i ( like tb_load) distributed by (a1) ;"
psql -d testdb -c " create index idx1_tb_load$i on tb_load$i (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);"
done
