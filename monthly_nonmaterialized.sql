CREATE OR REPLACE VIEW public.monthly_nonmaterialized AS
 SELECT transactions_v.date_month,
    count(1) AS count
   FROM transactions_v
  GROUP BY transactions_v.date_month