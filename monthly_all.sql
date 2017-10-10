CREATE OR REPLACE VIEW public.monthly_all AS
 SELECT date_trunc('month'::text, daily_all.date_day::timestamp with time zone) AS date_trunc,
    sum(daily_all.sum) AS sum
   FROM daily_all
  GROUP BY (date_trunc('month'::text, daily_all.date_day::timestamp with time zone))
