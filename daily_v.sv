CREATE OR REPLACE VIEW public.daily_v AS
 SELECT transactions2_v.date_day,
    sum(transactions2_v.amount) AS sum
   FROM transactions2_v
  WHERE transactions2_v.post_time >= '2017-12-31 00:00:00+00'::timestamp with time zone
  GROUP BY transactions2_v.date_day