WITH cte AS 
    (SELECT id, name, address
    FROM person)
SELECT 
    person1.name AS person_name1,
    person2.name AS person_name2,
    person1.address AS common_address
FROM cte person1
CROSS JOIN cte person2 WHERE person1.address = person2.address AND person1.id > person2.id
ORDER BY person1.name, person2.name, person1.address;
