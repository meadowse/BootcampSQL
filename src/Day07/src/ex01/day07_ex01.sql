SELECT name, count(pizzeria_id) AS count_of_visits FROM person_visits JOIN person p
    on person_visits.person_id = p.id GROUP BY name ORDER BY count_of_visits DESC, name LIMIT 4