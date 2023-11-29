(SELECT pizzeria.name AS pizzeria_name FROM (SELECT * FROM person JOIN person_visits pv on person.id = pv.person_id
WHERE name = 'Andrey') AS pv JOIN pizzeria ON pizzeria.id = pv.pizzeria_id) EXCEPT (SELECT pizzeria.name AS pizzeria_name
FROM (SELECT * FROM (SELECT * FROM person JOIN person_order po on person.id = po.person_id WHERE name = 'Andrey') AS po
JOIN menu ON po.menu_id = menu.id) AS m JOIN pizzeria ON pizzeria.id = m.pizzeria_id)