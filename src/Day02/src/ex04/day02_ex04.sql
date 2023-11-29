SELECT pizza_name, name AS pizzeria_name, price FROM pizzeria JOIN menu m on pizzeria.id = m.pizzeria_id
WHERE pizza_name IN ('mushroom pizza', 'pepperoni pizza') ORDER BY pizza_name, pizzeria_name