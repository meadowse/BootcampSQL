SELECT p.name AS name, pizza_name, price, price * (100 - discount) / 100 AS discount_price, p2.name AS pizzeria_name
FROM person_order JOIN person p on p.id = person_order.person_id
    JOIN menu m on person_order.menu_id = m.id
    JOIN pizzeria p2 on m.pizzeria_id = p2.id
    JOIN person_discounts pd on p.id = pd.person_id ORDER BY name, pizza_name