SELECT DISTINCT person.name AS name
FROM person
LEFT JOIN person_order ON person.id = person_order.person_id
LEFT JOIN menu ON person_order.menu_id = menu.id
WHERE person.gender = 'female' AND (menu.pizza_name LIKE '%cheese%' OR menu.pizza_name LIKE '%pepperoni%')
GROUP BY person.name
    HAVING SUM(CASE WHEN menu.pizza_name LIKE '%cheese%' THEN 1 ELSE 0 END) > 0
        AND SUM(CASE WHEN menu.pizza_name LIKE '%pepperoni%' THEN 1 ELSE 0 END) > 0
ORDER BY person.name;