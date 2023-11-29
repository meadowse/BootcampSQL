((SELECT pizzeria.name AS pizzeria_name FROM (SELECT * FROM person JOIN person_visits pv on person.id = pv.person_id
WHERE gender = 'male') AS pvm JOIN pizzeria ON pvm.pizzeria_id = pizzeria.id)
EXCEPT ALL (SELECT pizzeria.name AS pizzeria_name FROM (SELECT * FROM person JOIN person_visits pv
on person.id = pv.person_id WHERE gender = 'female') AS pvf JOIN pizzeria ON pvf.pizzeria_id = pizzeria.id))
UNION ALL ((SELECT pizzeria.name AS pizzeria_name FROM (SELECT * FROM person JOIN person_visits pv
on person.id = pv.person_id WHERE gender = 'female') AS pvf JOIN pizzeria ON pvf.pizzeria_id = pizzeria.id)
EXCEPT ALL (SELECT pizzeria.name AS pizzeria_name FROM (SELECT * FROM person JOIN person_visits pv
on person.id = pv.person_id WHERE gender = 'male') AS pvm JOIN pizzeria ON pvm.pizzeria_id = pizzeria.id))
ORDER BY pizzeria_name