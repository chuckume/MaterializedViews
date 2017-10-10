CREATE MATERIALIZED VIEW daily_m as (

SELECT date_day,
       sum(amount) AS sum
FROM transactions_v
WHERE post_time < '2017-12-31 00:00:00+00'
GROUP BY date_day);
