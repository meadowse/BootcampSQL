SELECT pizza_name, pizzeria.name AS pizzeria_name FROM (SELECT * FROM (SELECT * FROM person_order JOIN person
    ON person_order.person_id = person.id WHERE name IN ('Denis', 'Anna')) AS po JOIN menu ON menu.id = po.menu_id) as m
    JOIN pizzeria ON pizzeria.id = m.pizzeria_id ORDER BY pizza_name, pizzeria_name