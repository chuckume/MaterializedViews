# MaterializedViews

This repository contains the test data and code to test materilied view:

To load test data:

    createdb dbtest
    psql -f accounts.sql dbtest
    psql -f transactions.sql dbtest
    psql -f transactions_v.sql dbtest
    psql -f daily_v.sql dbtest
    psql -f daily_m.sql dbtest
    psql -f daily_all dbtest
    psql -f monthly_all dbtest
    psql -f monthly_nonmaterialized dbtest          
