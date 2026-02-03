SELECT order_date, CONCAT (name,' (age:', age,')') AS person_information 
FROM person_order
NATURAL JOIN 
(SELECT person.id as person_id, name, age 
FROM person) AS person
ORDER BY 1, 2;