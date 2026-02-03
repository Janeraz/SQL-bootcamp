WITH cte(missing_date) AS 
    (SELECT generated.date as missing_date
    FROM GENERATE_SERIES('2022-01-01', '2022-01-10', interval '1 day') as generated)
SELECT cte.missing_date 
FROM cte
LEFT JOIN 
    (SELECT DISTINCT visit_date
    FROM person_visits
    WHERE person_id = 1 OR person_id = 2) as visits
ON cte.missing_date = visits.visit_date
WHERE visits.visit_date IS NULL
ORDER BY cte.missing_date;
