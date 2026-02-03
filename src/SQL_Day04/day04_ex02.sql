CREATE VIEW v_generated_dates AS
 (SELECT day::date as generated_date
FROM GENERATE_SERIES('2022-01-01'::date, '2022-01-31'::date, interval '1 day') as day
ORDER BY generated_date);