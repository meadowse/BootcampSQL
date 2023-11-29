SELECT name FROM (SELECT * FROM person JOIN person_order po on person.id = po.person_id
WHERE gender = 'male' AND address IN ('Moscow', 'Samara')) AS po JOIN menu ON menu.id = po.menu_id
WHERE pizza_name IN ('mushroom pizza', 'pepperoni pizza') ORDER BY name DESC