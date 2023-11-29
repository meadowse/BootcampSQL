(SELECT name, count(*) as count, 'visit' AS action_type FROM person_visits pv JOIN pizzeria p
    ON pv.pizzeria_id = p.id GROUP BY name ORDER BY 2 DESC LIMIT 3)
UNION (SELECT name, count(*) AS count, 'order' AS action_type FROM person_order po JOIN menu m
    on m.id = po.menu_id JOIN pizzeria p on p.id = m.pizzeria_id GROUP BY name
ORDER BY 2 DESC LIMIT 3) ORDER BY 3, 2 DESC