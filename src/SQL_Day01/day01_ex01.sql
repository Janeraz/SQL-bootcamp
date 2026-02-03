SELECT object_name
FROM (SELECT pizza_name AS object_name, 'menu' AS column_1
FROM menu
UNION ALL
SELECT name, 'person' AS column_1
FROM person) AS column_1
ORDER BY column_1 DESC, object_name;
