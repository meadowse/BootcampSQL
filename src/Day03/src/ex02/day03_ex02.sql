SELECT pizza_name, price, name FROM (SELECT * FROM menu WHERE id NOT IN (SELECT menu_id FROM person_order)) AS m
JOIN pizzeria ON pizzeria.id = m.pizzeria_id ORDER BY pizza_name, price