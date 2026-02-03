SELECT 
    menu.pizza_name, 
    pizzeria.name AS pizzeria_name,
    menu.price
FROM menu 
LEFT JOIN pizzeria ON pizzeria.id = menu.pizzeria_id 
WHERE 
    menu.pizza_name LIKE 'mushroom%' OR menu.pizza_name LIKE 'pepperoni%'
ORDER BY menu.pizza_name, pizzeria_name;
