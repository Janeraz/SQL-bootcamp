SELECT DISTINCT person.name AS name
FROM person
LEFT JOIN person_order ON person.id = person_order.person_id
LEFT JOIN menu ON person_order.menu_id = menu.id
WHERE person.gender = 'male' AND (person.address LIKE 'Moscow%' OR person.address LIKE 'Samara%') AND (menu.pizza_name LIKE 'mushroom%' OR menu.pizza_name LIKE 'pepperoni%')
ORDER BY person.name  DESC;
