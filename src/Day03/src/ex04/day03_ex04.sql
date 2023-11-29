(SELECT pizzeria.name AS pizzeria_name FROM (SELECT * FROM (SELECT * FROM person JOIN person_order po
    on person.id = po.person_id WHERE gender = 'female') AS fvm JOIN menu ON fvm.menu_id = menu.id) AS m JOIN pizzeria
        ON m.pizzeria_id = pizzeria.id) EXCEPT (SELECT pizzeria.name AS pizzeria_name
        FROM (SELECT * FROM (SELECT * FROM person JOIN person_order po on person.id = po.person_id
        WHERE gender = 'male') AS pvm JOIN menu ON pvm.menu_id = menu.id) AS m JOIN pizzeria
        ON m.pizzeria_id = pizzeria.id) ORDER BY pizzeria_name