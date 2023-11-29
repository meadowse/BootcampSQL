SELECT name, sum(count) AS total_count FROM ((SELECT name, count(*) AS count FROM person_visits pv
    JOIN pizzeria pi ON pv.pizzeria_id = pi.id GROUP BY name) UNION (SELECT name, count(*) AS count
    FROM person_order po JOIN menu m on m.id = po.menu_id JOIN pizzeria pi on m.pizzeria_id = pi.id
    GROUP BY name)) as vo GROUP BY name ORDER BY total_count DESC, name