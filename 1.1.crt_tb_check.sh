psql -d testdb -c "
create table tb_check
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
psql -d testdb -c " create table tb_check$i ( like tb_check) distributed by (a1) ;"
done
