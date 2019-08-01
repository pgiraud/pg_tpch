#!/bin/sh

for q in `seq 1 22`
do
    DSS_QUERY=../../dss/templates ./qgen $q >> ../../dss/queries/$q.sql
    sed 's/^select/explain select/' ../../dss/queries/$q.sql > ../../dss/queries/$q.explain.sql
    cat ../../dss/queries/$q.sql >> ../../dss/queries/$q.explain.sql;
done
