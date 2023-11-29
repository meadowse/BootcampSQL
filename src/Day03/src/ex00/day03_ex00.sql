SELECT pizza_name, price, pizzeria_name, visit_date FROM (SELECT visit_date, pizzeria_id, pizzeria.name AS pizzeria_name
FROM (SELECT * FROM (SELECT * FROM person WHERE name = 'Kate') AS p JOIN person_visits
ON person_visits.person_id = p.id) AS pv JOIN pizzeria ON pizzeria.id = pv.pizzeria_id) AS piz JOIN menu
ON menu.pizzeria_id = piz.pizzeria_id WHERE price BETWEEN 800 AND 1000 ORDER BY pizza_name, price, pizzeria_name