psql -d testdb -c " insert into tb_check select i, i, i, i, i, i, i, i, i, i, i, i from generate_series(1, 10) i;"
