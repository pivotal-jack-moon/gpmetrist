psql -d testdb -c " insert into tb_load select i, i, i, i, i, i, i, i, i, i, i, i from generate_series(1, 100000) i;"
