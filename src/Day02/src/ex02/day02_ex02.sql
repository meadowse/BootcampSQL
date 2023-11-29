SELECT COALESCE(person_name, '-') AS person_name, perv.visit_date AS visit_date, COALESCE(pizzeria_name, '-')
AS pizzeria_name FROM (SELECT person_id, visit_date, person.name AS person_name FROM (SELECT * FROM person
FULL JOIN person_visits pv on person.id = pv.person_id
WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-3') AS perv FULL JOIN person ON perv.person_id = person.id) AS perv
    FULL JOIN (SELECT person_id, visit_date, pizzeria.name AS pizzeria_name FROM (SELECT *
    FROM generate_series('2022-01-01'::TIMESTAMP, '2022-01-03'::TIMESTAMP, INTERVAL '1 day') AS days(day)
        FULL JOIN (SELECT * FROM pizzeria FULL JOIN person_visits pv on pizzeria.id = pv.pizzeria_id) AS pizv
            ON pizv.visit_date = days.day WHERE day IS NOT NULL) AS dv FULL JOIN pizzeria
            ON dv.pizzeria_id = pizzeria.id) AS pizv
            ON perv.person_id = pizv.person_id AND perv.visit_date = pizv.visit_date
            ORDER BY person_name, visit_date, pizzeria_name