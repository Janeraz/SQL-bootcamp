    SELECT 
        COALESCE(person.name,'-') as person_name, 
        visit.visit_date as visit_date, 
        COALESCE(pizzeria.name,'-') as pizzeria_name 
    FROM 
        (SELECT * from person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') as visit
    FULL JOIN person ON visit.person_id = person.id 
    FULL JOIN pizzeria ON visit.pizzeria_id = pizzeria.id
    ORDER BY person_name,visit_date,pizzeria_name;
