CREATE OR REPLACE VIEW public.transactions_v AS
 SELECT id,
    name,
    amount,
    post_time,
    post_time::date AS date_day,
    date_trunc('week'::text, transactions.post_time)::date AS date_week,
    date_trunc('month'::text, transactions.post_time)::date AS date_month
   FROM transactions
