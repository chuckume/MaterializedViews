CREATE OR REPLACE VIEW public.daily_all AS
 SELECT daily_v.date_day,
    daily_v.sum
   FROM daily_v
UNION
 SELECT daily_m.date_day,
    daily_m.sum
   FROM daily_m