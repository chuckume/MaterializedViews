# MaterializedViews

This repository contains the test data and code to test materialized view:

TO LOAD DATA:

    createdb dbtest
    psql -f accounts.sql dbtest
    psql -f transactions.sql dbtest
    psql -f transactions_v.sql dbtest
    psql -f daily_v.sql dbtest
    psql -f daily_m.sql dbtest
    psql -f daily_all.sql dbtest
    psql -f monthly_all.sql dbtest
    psql -f monthly_nonmaterialized.sql dbtest          

TO TEST PERFORMANCE:

    EXPLAIN ANALYZE SELECT * FROM monthly_all
    EXPLAIN ANALYZE SELECT * FROM monthly_nonmaterialized
