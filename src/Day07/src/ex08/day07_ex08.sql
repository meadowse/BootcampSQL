SELECT address, p.name AS name, count(*) AS count_of_orders FROM person_order po JOIN menu m
    on po.menu_id = m.id JOIN pizzeria p on p.id = m.pizzeria_id JOIN person p2
        on po.person_id = p2.id GROUP BY address, p.name ORDER BY address, name