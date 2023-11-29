SELECT pizzeria_name FROM (SELECT pizzeria_id, pizzeria.name AS pizzeria_name FROM (SELECT * FROM person JOIN person_visits pv on person.id = pv.person_id WHERE name = 'Dmitriy')
    AS pv JOIN pizzeria ON pizzeria.id = pv.pizzeria_id WHERE visit_date = '2022-01-08') AS pv JOIN menu
        ON menu.pizzeria_id = pv.pizzeria_id WHERE price < 800