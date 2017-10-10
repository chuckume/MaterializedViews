CREATE OR REPLACE VIEW public.transactions_v AS
 SELECT transactions.id,
    transactions.name,
    transactions.amount,
    transactions.post_time,
    transactions.post_time::date AS date_day,
    date_trunc('week'::text, transactions.post_time)::date AS date_week,
    date_trunc('month'::text, transactions.post_time)::date AS date_month
   FROM transactionsamp with time zone))