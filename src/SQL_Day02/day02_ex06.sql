SELECT 
    menu.pizza_name as pizza_name, 
    pizzeria.name as pizzeria_name
FROM menu
LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
LEFT JOIN person_order ON menu.id = person_order.menu_id
LEFT JOIN person ON person_order.person_id = person.id 
WHERE person.name LIKE 'Denis' OR person.name LIKE 'Anna'
ORDER BY pizza_name, pizzeria_name;
